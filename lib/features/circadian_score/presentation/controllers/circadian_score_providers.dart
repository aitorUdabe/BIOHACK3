import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../caffeine/domain/entities/caffeine_event.dart';
import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../../nutrition/domain/entities/nutrition_event.dart';
import '../../../screen_usage/domain/entities/screen_usage_event.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../../user_profile/presentation/controllers/user_profile_providers.dart';
import '../../domain/entities/circadian_score.dart';
import '../../domain/usecases/circadian_score_calculator.dart';

final circadianScoreCalculatorProvider = Provider<CircadianScoreCalculator>((ref) {
  return const CircadianScoreCalculator();
});

final todayCircadianScoreProvider = Provider<CircadianScoreAnalysis>((ref) {
  final user = ref.watch(localUserProfileProvider);
  final now = DateTime.now();
  final date = DateTime(now.year, now.month, now.day);
  final wake = user.usualWakeTime.onDate(date);
  final sleep = user.usualSleepTime.onDate(date);
  final calculator = ref.watch(circadianScoreCalculatorProvider);

  return calculator.calculate(
    CircadianScoreInput(
      userId: user.id,
      date: date,
      wakeUpAt: wake,
      targetSleepAt: sleep,
      lightEvents: [
        LightExposureEvent(
          id: 'demo-light',
          userId: user.id,
          startAt: wake.add(const Duration(minutes: 30)),
          endAt: wake.add(const Duration(minutes: 50)),
          lightType: LightType.directSun,
          estimatedLux: 12000,
          source: DataSource.manual,
          isMorningSunlight: true,
          isSunriseViewed: true,
          createdAt: now,
        ),
      ],
      nutritionEvents: [
        NutritionEvent(
          id: 'demo-dinner',
          userId: user.id,
          consumedAt: sleep.subtract(const Duration(hours: 3, minutes: 15)),
          calories: 620,
          proteinGrams: 42,
          carbsGrams: 70,
          fatGrams: 18,
          fiberGrams: 9,
          mealType: MealType.dinner,
          isNightEating: false,
          hoursBeforeSleep: 3.25,
          source: DataSource.manual,
          createdAt: now,
        ),
      ],
      sleepRecord: SleepRecord(
        id: 'demo-sleep',
        userId: user.id,
        sleepStart: date.subtract(const Duration(hours: 1)),
        sleepEnd: wake,
        totalSleepMinutes: 455,
        sleepEfficiency: 0.87,
        source: DataSource.manual,
        createdAt: now,
      ),
      caffeineEvents: [
        CaffeineEvent(
          id: 'demo-coffee',
          userId: user.id,
          consumedAt: DateTime(date.year, date.month, date.day, 10),
          caffeineMg: 90,
          sourceType: CaffeineSourceType.coffee,
          isLateCaffeine: false,
          createdAt: now,
        ),
      ],
      screenUsageEvents: [
        ScreenUsageEvent(
          id: 'demo-screen',
          userId: user.id,
          startAt: sleep.subtract(const Duration(hours: 1)),
          endAt: sleep.subtract(const Duration(minutes: 35)),
          estimatedMinutes: 25,
          usageType: ScreenUsageType.general,
          isNightUsage: true,
          source: DataSource.manual,
          createdAt: now,
        ),
      ],
      trainingSessions: [
        TrainingSession(
          id: 'demo-training',
          userId: user.id,
          startAt: DateTime(date.year, date.month, date.day, 18),
          endAt: DateTime(date.year, date.month, date.day, 19),
          intensity: TrainingIntensity.moderate,
          trainingType: TrainingType.strength,
          caloriesBurned: 360,
          isNightTraining: false,
          createdAt: now,
        ),
      ],
    ),
  );
});
