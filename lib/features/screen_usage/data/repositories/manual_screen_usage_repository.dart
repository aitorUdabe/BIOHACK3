import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../domain/entities/screen_usage_event.dart';
import '../../domain/repositories/screen_usage_repository.dart';

class ManualScreenUsageRepository implements ScreenUsageRepository {
  ManualScreenUsageRepository({List<ScreenUsageEvent>? seedEvents})
      : _events = seedEvents ?? [];

  final List<ScreenUsageEvent> _events;

  @override
  Future<bool> requestPermissions() async => false;

  @override
  Future<List<ScreenUsageEvent>> getScreenUsage(DateTime from, DateTime to) async {
    return _events
        .where((event) => event.startAt.isAfter(from) && event.endAt.isBefore(to))
        .toList(growable: false);
  }

  @override
  Future<void> saveManualUsage(ScreenUsageEvent event) async {
    _events.add(
      ScreenUsageEvent(
        id: event.id,
        userId: event.userId,
        startAt: event.startAt,
        endAt: event.endAt,
        estimatedMinutes: event.estimatedMinutes,
        usageType: event.usageType,
        isNightUsage: event.isNightUsage,
        source: DataSource.manual,
        createdAt: event.createdAt,
      ),
    );
  }
}
