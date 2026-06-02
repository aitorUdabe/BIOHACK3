import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../entities/health_permission_snapshot.dart';

abstract interface class HealthDataRepository {
  Future<HealthPermissionSnapshot> requestPermissions();

  Future<List<SleepRecord>> getSleepRecords(DateTime from, DateTime to);

  Future<int?> getDailySteps(DateTime date);

  Future<double?> getHeartRateVariability(DateTime date);

  Future<int?> getRestingHeartRate(DateTime date);

  Future<int?> getActiveEnergy(DateTime date);

  Future<List<TrainingSession>> getWorkouts(DateTime from, DateTime to);
}
