import '../entities/screen_usage_event.dart';

abstract interface class ScreenUsageRepository {
  Future<bool> requestPermissions();

  Future<List<ScreenUsageEvent>> getScreenUsage(DateTime from, DateTime to);

  Future<void> saveManualUsage(ScreenUsageEvent event);
}
