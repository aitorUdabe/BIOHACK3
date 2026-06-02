import 'package:anti_gravity/core/utils/clock_time.dart';
import 'package:anti_gravity/features/caffeine/domain/entities/caffeine_event.dart';
import 'package:anti_gravity/features/light_tracking/domain/entities/light_exposure_event.dart';
import 'package:anti_gravity/features/nutrition/domain/entities/nutrition_event.dart';
import 'package:anti_gravity/features/screen_usage/domain/entities/screen_usage_event.dart';
import 'package:anti_gravity/features/sleep/domain/entities/sleep_record.dart';
import 'package:anti_gravity/features/training/domain/entities/training_session.dart';
import 'package:anti_gravity/features/user_profile/domain/entities/user_profile.dart';

final baseDate = DateTime(2026, 6, 2);

UserProfile testUser({
  bool nightShift = false,
  ClockTime wake = const ClockTime(hour: 7, minute: 0),
  ClockTime sleep = const ClockTime(hour: 23, minute: 0),
}) {
  final now = DateTime(2026, 6, 2, 10);
  return UserProfile(
    id: 'user-1',
    name: 'Test User',
    fitzpatrickSkinType: FitzpatrickSkinType.type3,
    baseChronotype: Chronotype.intermediate,
    workScheduleType: nightShift ? WorkScheduleType.night : WorkScheduleType.day,
    isNightShiftWorker: nightShift,
    usualWakeTime: wake,
    usualSleepTime: sleep,
    mainGoal: MainGoal.performance,
    trainingProfile: TrainingProfile.mixed,
    weightKg: 80,
    createdAt: now,
    updatedAt: now,
  );
}

LightExposureEvent morningLight(DateTime wake, {int delayMinutes = 30}) {
  return LightExposureEvent(
    id: 'light-1',
    userId: 'user-1',
    startAt: wake.add(Duration(minutes: delayMinutes)),
    endAt: wake.add(Duration(minutes: delayMinutes + 20)),
    lightType: LightType.directSun,
    estimatedLux: 10000,
    source: DataSource.manual,
    isMorningSunlight: true,
    isSunriseViewed: true,
    createdAt: baseDate,
  );
}

NutritionEvent dinnerBeforeSleep(DateTime sleep, Duration beforeSleep) {
  final hours = beforeSleep.inMinutes / 60;
  return NutritionEvent(
    id: 'meal-1',
    userId: 'user-1',
    consumedAt: sleep.subtract(beforeSleep),
    calories: 650,
    proteinGrams: 40,
    carbsGrams: 70,
    fatGrams: 20,
    fiberGrams: 8,
    mealType: MealType.dinner,
    isNightEating: hours < 2,
    hoursBeforeSleep: hours,
    source: DataSource.manual,
    createdAt: baseDate,
  );
}

SleepRecord sleepRecord({
  int totalMinutes = 480,
  double efficiency = 0.88,
  DateTime? start,
  DateTime? end,
}) {
  return SleepRecord(
    id: 'sleep-1',
    userId: 'user-1',
    sleepStart: start ?? DateTime(2026, 6, 1, 23),
    sleepEnd: end ?? DateTime(2026, 6, 2, 7),
    totalSleepMinutes: totalMinutes,
    sleepEfficiency: efficiency,
    source: DataSource.manual,
    createdAt: baseDate,
  );
}

CaffeineEvent caffeine(DateTime at, {bool late = false}) {
  return CaffeineEvent(
    id: 'caf-1',
    userId: 'user-1',
    consumedAt: at,
    caffeineMg: 100,
    sourceType: CaffeineSourceType.coffee,
    isLateCaffeine: late,
    createdAt: baseDate,
  );
}

ScreenUsageEvent screenUsage(DateTime sleep, {int minutes = 60}) {
  return ScreenUsageEvent(
    id: 'screen-1',
    userId: 'user-1',
    startAt: sleep.subtract(Duration(minutes: minutes)),
    endAt: sleep,
    estimatedMinutes: minutes,
    usageType: ScreenUsageType.general,
    isNightUsage: true,
    source: DataSource.manual,
    createdAt: baseDate,
  );
}

TrainingSession training(DateTime start, {bool night = false}) {
  return TrainingSession(
    id: 'training-1',
    userId: 'user-1',
    startAt: start,
    endAt: start.add(const Duration(hours: 1)),
    intensity: TrainingIntensity.high,
    trainingType: TrainingType.strength,
    caloriesBurned: 450,
    isNightTraining: night,
    createdAt: baseDate,
  );
}
