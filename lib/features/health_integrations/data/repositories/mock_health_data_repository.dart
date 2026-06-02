import '../../../../core/permissions/permission_models.dart';
import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../domain/entities/health_permission_snapshot.dart';
import '../../domain/repositories/health_data_repository.dart';

class MockHealthDataRepository implements HealthDataRepository {
  const MockHealthDataRepository({this.userId = 'local-user'});

  final String userId;

  @override
  Future<HealthPermissionSnapshot> requestPermissions() async {
    return const HealthPermissionSnapshot(
      healthStatus: PermissionStatusValue.notDetermined,
      stepsStatus: PermissionStatusValue.notDetermined,
      sleepStatus: PermissionStatusValue.notDetermined,
      workoutStatus: PermissionStatusValue.notDetermined,
      usesManualFallback: true,
    );
  }

  @override
  Future<List<SleepRecord>> getSleepRecords(DateTime from, DateTime to) async {
    return [
      SleepRecord(
        id: 'mock-sleep-${from.toIso8601String()}',
        userId: userId,
        sleepStart: DateTime(from.year, from.month, from.day, 23),
        sleepEnd: DateTime(from.year, from.month, from.day + 1, 7),
        totalSleepMinutes: 480,
        sleepEfficiency: 0.86,
        source: DataSource.manual,
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<int?> getDailySteps(DateTime date) async => 6500;

  @override
  Future<double?> getHeartRateVariability(DateTime date) async => null;

  @override
  Future<int?> getRestingHeartRate(DateTime date) async => null;

  @override
  Future<int?> getActiveEnergy(DateTime date) async => null;

  @override
  Future<List<TrainingSession>> getWorkouts(DateTime from, DateTime to) async {
    return const [];
  }
}
