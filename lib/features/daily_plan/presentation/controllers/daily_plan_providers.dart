import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../caffeine/domain/entities/caffeine_event.dart';
import '../../../daily_plan/domain/entities/daily_plan.dart';
import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../../nutrition/domain/entities/nutrition_event.dart';
import '../../../screen_usage/domain/entities/screen_usage_event.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../../user_profile/presentation/controllers/user_profile_providers.dart';
import '../../domain/usecases/daily_plan_generator.dart';

final dailyPlanGeneratorProvider = Provider<DailyPlanGenerator>((ref) {
  return const DailyPlanGenerator();
});

final todayDailyPlanProvider = Provider<DailyPlan>((ref) {
  final user = ref.watch(localUserProfileProvider);
  final now = DateTime.now();
  final date = DateTime(now.year, now.month, now.day);
  final generator = ref.watch(dailyPlanGeneratorProvider);
  final sleepAt = user.usualSleepTime.onDate(date);

  return generator.generate(
    DailyPlanInput(
      user: user,
      date: date,
      previousSleep: SleepRecord(
        id: 'plan-sleep',
        userId: user.id,
        sleepStart: date.subtract(const Duration(hours: 8)),
        sleepEnd: user.usualWakeTime.onDate(date),
        totalSleepMinutes: 430,
        sleepEfficiency: 0.82,
        source: DataSource.manual,
        createdAt: now,
      ),
      previousNightMeals: [
        NutritionEvent(
          id: 'plan-meal',
          userId: user.id,
          consumedAt: sleepAt.subtract(const Duration(hours: 2)),
          calories: 540,
          proteinGrams: 35,
          carbsGrams: 55,
          fatGrams: 16,
          fiberGrams: 7,
          mealType: MealType.dinner,
          isNightEating: false,
          hoursBeforeSleep: 2,
          source: DataSource.manual,
          createdAt: now,
        ),
      ],
      previousNightScreenUsage: [
        ScreenUsageEvent(
          id: 'plan-screen',
          userId: user.id,
          startAt: sleepAt.subtract(const Duration(minutes: 50)),
          endAt: sleepAt.subtract(const Duration(minutes: 5)),
          estimatedMinutes: 45,
          usageType: ScreenUsageType.general,
          isNightUsage: true,
          source: DataSource.manual,
          createdAt: now,
        ),
      ],
      caffeineEvents: [
        CaffeineEvent(
          id: 'plan-caffeine',
          userId: user.id,
          consumedAt: DateTime(date.year, date.month, date.day, 16, 30),
          caffeineMg: 80,
          sourceType: CaffeineSourceType.coffee,
          isLateCaffeine: true,
          createdAt: now,
        ),
      ],
      plannedTraining: TrainingSession(
        id: 'plan-training',
        userId: user.id,
        startAt: DateTime(date.year, date.month, date.day, 21),
        endAt: DateTime(date.year, date.month, date.day, 22),
        intensity: TrainingIntensity.moderate,
        trainingType: TrainingType.strength,
        caloriesBurned: 420,
        isNightTraining: true,
        createdAt: now,
      ),
    ),
  );
});
