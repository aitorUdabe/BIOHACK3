import '../../../circadian_score/domain/entities/circadian_score.dart';

class DailyHabitOutcome {
  const DailyHabitOutcome({
    required this.date,
    required this.lateDinner,
    required this.lateCaffeine,
    required this.nightScreenMinutes,
    required this.morningLightMinutes,
    required this.nightTraining,
    required this.sleepScoreNextDay,
    required this.energyScoreNextDay,
    this.hrvNextDay,
  });

  final DateTime date;
  final bool lateDinner;
  final bool lateCaffeine;
  final int nightScreenMinutes;
  final int morningLightMinutes;
  final bool nightTraining;
  final double sleepScoreNextDay;
  final int energyScoreNextDay;
  final double? hrvNextDay;
}

class AdaptiveInsight {
  const AdaptiveInsight({
    required this.title,
    required this.explanation,
    required this.confidence,
    required this.isHypothesis,
  });

  final String title;
  final String explanation;
  final ConfidenceLevel confidence;
  final bool isHypothesis;
}

class AdaptiveLearningSummary {
  const AdaptiveLearningSummary({
    required this.isCalibration,
    required this.baselineSleepScore,
    required this.baselineEnergyScore,
    required this.insights,
    required this.toleranceAdjustments,
  });

  final bool isCalibration;
  final double baselineSleepScore;
  final double baselineEnergyScore;
  final List<AdaptiveInsight> insights;
  final Map<String, double> toleranceAdjustments;
}
