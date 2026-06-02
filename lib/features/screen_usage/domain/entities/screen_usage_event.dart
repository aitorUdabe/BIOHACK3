import '../../../light_tracking/domain/entities/light_exposure_event.dart';

enum ScreenUsageType {
  general,
  social,
  work,
  entertainment,
  reading,
  unknown,
}

class ScreenUsageEvent {
  const ScreenUsageEvent({
    required this.id,
    required this.userId,
    required this.startAt,
    required this.endAt,
    required this.estimatedMinutes,
    required this.usageType,
    required this.isNightUsage,
    required this.source,
    required this.createdAt,
  });

  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final int estimatedMinutes;
  final ScreenUsageType usageType;
  final bool isNightUsage;
  final DataSource source;
  final DateTime createdAt;
}
