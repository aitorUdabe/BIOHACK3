import '../../../../core/utils/date_time_extensions.dart';
import '../../../caffeine/domain/entities/caffeine_event.dart';
import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../../nutrition/domain/entities/nutrition_event.dart';
import '../../../screen_usage/domain/entities/screen_usage_event.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../entities/circadian_score.dart';

class CircadianScoreInput {
  const CircadianScoreInput({
    required this.userId,
    required this.date,
    required this.wakeUpAt,
    required this.targetSleepAt,
    this.lightEvents = const [],
    this.nutritionEvents = const [],
    this.sleepRecord,
    this.caffeineEvents = const [],
    this.screenUsageEvents = const [],
    this.trainingSessions = const [],
    this.artificialLightMinutesAtNight = 0,
  });

  final String userId;
  final DateTime date;
  final DateTime wakeUpAt;
  final DateTime targetSleepAt;
  final List<LightExposureEvent> lightEvents;
  final List<NutritionEvent> nutritionEvents;
  final SleepRecord? sleepRecord;
  final List<CaffeineEvent> caffeineEvents;
  final List<ScreenUsageEvent> screenUsageEvents;
  final List<TrainingSession> trainingSessions;
  final int artificialLightMinutesAtNight;
}

class CircadianScoreCalculator {
  const CircadianScoreCalculator();

  CircadianScoreAnalysis calculate(CircadianScoreInput input) {
    final lightScore = _calculateLightScore(input);
    final nutritionScore = _calculateNutritionScore(input);
    final sleepScore = _calculateSleepScore(input.sleepRecord);
    final behaviorScore = _calculateBehaviorScore(input);

    final nightEatingPenalty = _nightEatingPenalty(input);
    final lateCaffeinePenalty = _lateCaffeinePenalty(input);
    final screenPenalty = _screenPenalty(input);
    final trainingPenalty = _trainingPenalty(input);
    final totalPenalties = nightEatingPenalty +
        lateCaffeinePenalty +
        screenPenalty +
        trainingPenalty;

    final rawScore = lightScore * 0.35 +
        nutritionScore * 0.30 +
        sleepScore * 0.25 +
        behaviorScore * 0.10 -
        totalPenalties;
    final totalScore = rawScore.clampDouble(0, 100);

    final confidence = _confidenceFor(input);
    final recommendations = _recommendationsFor(
      input,
      lightScore: lightScore,
      nutritionScore: nutritionScore,
      sleepScore: sleepScore,
      behaviorScore: behaviorScore,
    );

    final score = CircadianScore(
      id: 'circadian-${input.userId}-${input.date.toIso8601String()}',
      userId: input.userId,
      date: input.date.dateOnly,
      totalScore: totalScore,
      lightScore: lightScore,
      nutritionScore: nutritionScore,
      sleepScore: sleepScore,
      screenPenalty: screenPenalty,
      nightEatingPenalty: nightEatingPenalty,
      lateCaffeinePenalty: lateCaffeinePenalty,
      explanation: _explanationFor(
        totalScore,
        confidence,
        totalPenalties,
        input.sleepRecord == null,
      ),
      createdAt: DateTime.now(),
    );

    return CircadianScoreAnalysis(
      score: score,
      behaviorScore: behaviorScore,
      trainingPenalty: trainingPenalty,
      confidence: confidence,
      recommendations: recommendations,
      breakdown: {
        'lightScore': lightScore,
        'nutritionScore': nutritionScore,
        'sleepScore': sleepScore,
        'behaviorScore': behaviorScore,
        'totalPenalties': totalPenalties,
      },
    );
  }

  double _calculateLightScore(CircadianScoreInput input) {
    final morningEvents = input.lightEvents.where((event) {
      final startsAfterWake = !event.startAt.isBefore(input.wakeUpAt);
      final durationEnough = event.duration.inMinutes >= 15;
      return startsAfterWake &&
          durationEnough &&
          (event.isMorningSunlight ||
              event.isSunriseViewed ||
              event.isNaturalLight);
    }).toList()
      ..sort((firstEvent, secondEvent) {
        return firstEvent.startAt.compareTo(secondEvent.startAt);
      });

    if (morningEvents.isEmpty) {
      return 0;
    }

    final first = morningEvents.first;
    final minutesAfterWake = first.startAt.difference(input.wakeUpAt).inMinutes;
    if (minutesAfterWake <= 60) {
      return 100;
    }
    if (minutesAfterWake <= 120) {
      return 70;
    }
    return 40;
  }

  double _calculateNutritionScore(CircadianScoreInput input) {
    final eventsBeforeSleep = input.nutritionEvents
        .where((event) => event.consumedAt.isBefore(input.targetSleepAt))
        .toList()
      ..sort((firstMeal, secondMeal) {
        return secondMeal.consumedAt.compareTo(firstMeal.consumedAt);
      });

    if (eventsBeforeSleep.isEmpty) {
      return 60;
    }

    final lastMeal = eventsBeforeSleep.first;
    final hoursBeforeSleep =
        input.targetSleepAt.difference(lastMeal.consumedAt).inMinutes / 60;

    if (hoursBeforeSleep >= 3) {
      return 100;
    }
    if (hoursBeforeSleep >= 2) {
      return 70;
    }
    if (hoursBeforeSleep >= 1) {
      return 40;
    }
    return 10;
  }

  double _calculateSleepScore(SleepRecord? sleepRecord) {
    if (sleepRecord == null) {
      return 60;
    }

    final durationHours = sleepRecord.totalSleepHours;
    final durationScore = switch (durationHours) {
      >= 7 && <= 9 => 100,
      >= 6 && < 7 => 75,
      > 9 && <= 10 => 80,
      >= 5 && < 6 => 50,
      _ => 30,
    };
    final efficiencyScore = (sleepRecord.sleepEfficiency * 100).clampDouble(0, 100);

    return (durationScore * 0.6 + efficiencyScore * 0.4).clampDouble(0, 100);
  }

  double _calculateBehaviorScore(CircadianScoreInput input) {
    var score = 100.0;
    if (input.screenUsageEvents.any((event) => event.isNightUsage)) {
      score -= 15;
    }
    if (input.caffeineEvents.any((event) => event.isLateCaffeine)) {
      score -= 20;
    }
    if (input.artificialLightMinutesAtNight >= 60) {
      score -= 20;
    }
    return score.clampDouble(0, 100);
  }

  double _nightEatingPenalty(CircadianScoreInput input) {
    final hasVeryLateFood = input.nutritionEvents.any((event) {
      final hoursBeforeSleep = input.targetSleepAt.difference(event.consumedAt).inMinutes / 60;
      return event.isNightEating && hoursBeforeSleep < 1;
    });
    return hasVeryLateFood ? 15 : 0;
  }

  double _lateCaffeinePenalty(CircadianScoreInput input) {
    return input.caffeineEvents.any((event) => event.isLateCaffeine) ? 10 : 0;
  }

  double _screenPenalty(CircadianScoreInput input) {
    final nightMinutes = input.screenUsageEvents
        .where((event) => event.isNightUsage)
        .fold<int>(0, (total, event) => total + event.estimatedMinutes);
    return nightMinutes >= 45 ? 10 : 0;
  }

  double _trainingPenalty(CircadianScoreInput input) {
    final hasIntenseLateTraining = input.trainingSessions.any(
      (session) => session.isNightTraining && session.isIntense,
    );
    return hasIntenseLateTraining ? 5 : 0;
  }

  ConfidenceLevel _confidenceFor(CircadianScoreInput input) {
    var dataPoints = 0;
    if (input.lightEvents.isNotEmpty) dataPoints++;
    if (input.nutritionEvents.isNotEmpty) dataPoints++;
    if (input.sleepRecord != null) dataPoints++;
    if (input.screenUsageEvents.isNotEmpty || input.caffeineEvents.isNotEmpty) {
      dataPoints++;
    }

    if (dataPoints >= 4) {
      return ConfidenceLevel.high;
    }
    if (dataPoints >= 2) {
      return ConfidenceLevel.medium;
    }
    return ConfidenceLevel.low;
  }

  List<String> _recommendationsFor(
    CircadianScoreInput input, {
    required double lightScore,
    required double nutritionScore,
    required double sleepScore,
    required double behaviorScore,
  }) {
    final recommendations = <String>[];
    if (lightScore < 70) {
      recommendations.add(
        'Sal a recibir luz natural durante 15 minutos al despertar o lo antes posible.',
      );
    }
    if (nutritionScore < 70) {
      recommendations.add(
        'Prueba a terminar la última comida al menos 2-3 horas antes de dormir.',
      );
    }
    if (sleepScore < 70) {
      recommendations.add(
        'Prioriza una rutina de bajada de activación y registra sueño manual si no hay wearable.',
      );
    }
    if (behaviorScore < 80) {
      recommendations.add(
        'Reduce brillo, luz azul y móvil durante los 60 minutos previos al sueño.',
      );
    }
    if (input.trainingSessions.any((session) => session.isNightTraining)) {
      recommendations.add(
        'Si entrenas tarde, usa cena fácil de digerir y 5-10 minutos de respiración.',
      );
    }
    return recommendations.take(3).toList(growable: false);
  }

  String _explanationFor(
    double totalScore,
    ConfidenceLevel confidence,
    double totalPenalties,
    bool missingSleep,
  ) {
    final confidenceText = switch (confidence) {
      ConfidenceLevel.low => 'baja',
      ConfidenceLevel.medium => 'media',
      ConfidenceLevel.high => 'alta',
    };
    final missingSleepText = missingSleep
        ? ' Faltan datos de sueño, así que se usa un valor neutro.'
        : '';
    return 'Score circadiano inicial ${totalScore.round()}/100 con confianza $confidenceText.'
        ' Penalizaciones aplicadas: ${totalPenalties.round()} puntos.'
        '$missingSleepText Recomendaciones educativas, no médicas.';
  }
}
