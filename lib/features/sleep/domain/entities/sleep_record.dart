import '../../../light_tracking/domain/entities/light_exposure_event.dart';

class SleepRecord {
  const SleepRecord({
    required this.id,
    required this.userId,
    required this.sleepStart,
    required this.sleepEnd,
    required this.totalSleepMinutes,
    required this.sleepEfficiency,
    required this.source,
    required this.createdAt,
    this.deepSleepMinutes,
    this.remSleepMinutes,
    this.awakenings,
  });

  final String id;
  final String userId;
  final DateTime sleepStart;
  final DateTime sleepEnd;
  final int totalSleepMinutes;
  final double sleepEfficiency;
  final DataSource source;
  final DateTime createdAt;
  final int? deepSleepMinutes;
  final int? remSleepMinutes;
  final int? awakenings;

  double get totalSleepHours => totalSleepMinutes / 60;
}
