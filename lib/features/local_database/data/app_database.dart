import 'package:drift/drift.dart';

part 'app_database.g.dart';

class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get birthDate => dateTime().nullable()();
  TextColumn get sex => text().nullable()();
  RealColumn get heightCm => real().nullable()();
  RealColumn get weightKg => real().nullable()();
  TextColumn get fitzpatrickSkinType => text()();
  TextColumn get baseChronotype => text()();
  TextColumn get workScheduleType => text()();
  BoolColumn get isNightShiftWorker => boolean()();
  TextColumn get usualWakeTime => text()();
  TextColumn get usualSleepTime => text()();
  TextColumn get mainGoal => text()();
  TextColumn get trainingProfile => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class LightExposureEvents extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  TextColumn get lightType => text()();
  IntColumn get estimatedLux => integer()();
  RealColumn get uvIndex => real().nullable()();
  TextColumn get source => text()();
  BoolColumn get isMorningSunlight => boolean()();
  BoolColumn get isSunriseViewed => boolean()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class NutritionEvents extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get consumedAt => dateTime()();
  IntColumn get calories => integer()();
  RealColumn get proteinGrams => real()();
  RealColumn get carbsGrams => real()();
  RealColumn get fatGrams => real()();
  RealColumn get fiberGrams => real()();
  TextColumn get mealType => text()();
  BoolColumn get isNightEating => boolean()();
  RealColumn get hoursBeforeSleep => real().nullable()();
  IntColumn get satietyScore => integer().nullable()();
  IntColumn get energyAfterMealScore => integer().nullable()();
  IntColumn get anxietyAfterMealScore => integer().nullable()();
  TextColumn get source => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class SleepRecords extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get sleepStart => dateTime()();
  DateTimeColumn get sleepEnd => dateTime()();
  IntColumn get totalSleepMinutes => integer()();
  RealColumn get sleepEfficiency => real()();
  IntColumn get deepSleepMinutes => integer().nullable()();
  IntColumn get remSleepMinutes => integer().nullable()();
  IntColumn get awakenings => integer().nullable()();
  TextColumn get source => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class DailyBiometricsTable extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get date => dateTime()();
  RealColumn get hrvAverage => real().nullable()();
  IntColumn get restingHeartRate => integer().nullable()();
  RealColumn get basalTemperatureDeviation => real().nullable()();
  IntColumn get totalSteps => integer().nullable()();
  IntColumn get estimatedNeatKcal => integer().nullable()();
  IntColumn get subjectiveEnergyScore => integer().nullable()();
  IntColumn get subjectiveStressScore => integer().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class TrainingSessions extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  TextColumn get intensity => text()();
  TextColumn get trainingType => text()();
  IntColumn get caloriesBurned => integer()();
  BoolColumn get isNightTraining => boolean()();
  IntColumn get perceivedExertion => integer().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class CaffeineEvents extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get consumedAt => dateTime()();
  IntColumn get caffeineMg => integer()();
  TextColumn get sourceType => text()();
  BoolColumn get isLateCaffeine => boolean()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class ScreenUsageEvents extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  IntColumn get estimatedMinutes => integer()();
  TextColumn get usageType => text()();
  BoolColumn get isNightUsage => boolean()();
  TextColumn get source => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class CircadianScores extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get date => dateTime()();
  RealColumn get totalScore => real()();
  RealColumn get lightScore => real()();
  RealColumn get nutritionScore => real()();
  RealColumn get sleepScore => real()();
  RealColumn get screenPenalty => real()();
  RealColumn get nightEatingPenalty => real()();
  RealColumn get lateCaffeinePenalty => real()();
  TextColumn get explanation => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class DailyPlans extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(UserProfiles, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get priorityActionsJson => text()();
  TextColumn get morningLightTarget => text()();
  TextColumn get nutritionWindowStart => text()();
  TextColumn get nutritionWindowEnd => text()();
  TextColumn get caffeineCutoffTime => text()();
  TextColumn get trainingRecommendation => text()();
  TextColumn get eveningLightRecommendation => text()();
  TextColumn get sleepPreparationRecommendation => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

@DriftDatabase(
  tables: [
    UserProfiles,
    LightExposureEvents,
    NutritionEvents,
    SleepRecords,
    DailyBiometricsTable,
    TrainingSessions,
    CaffeineEvents,
    ScreenUsageEvents,
    CircadianScores,
    DailyPlans,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.executor);

  @override
  int get schemaVersion => 1;

  Future<void> deleteAllSensitiveData() async {
    await transaction(() async {
      await delete(dailyPlans).go();
      await delete(circadianScores).go();
      await delete(screenUsageEvents).go();
      await delete(caffeineEvents).go();
      await delete(trainingSessions).go();
      await delete(dailyBiometricsTable).go();
      await delete(sleepRecords).go();
      await delete(nutritionEvents).go();
      await delete(lightExposureEvents).go();
      await delete(userProfiles).go();
    });
  }
}
