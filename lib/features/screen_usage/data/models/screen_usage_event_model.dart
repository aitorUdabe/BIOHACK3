import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../domain/entities/screen_usage_event.dart';

class ScreenUsageEventModel extends ScreenUsageEvent {
  const ScreenUsageEventModel({
    required super.id,
    required super.userId,
    required super.startAt,
    required super.endAt,
    required super.estimatedMinutes,
    required super.usageType,
    required super.isNightUsage,
    required super.source,
    required super.createdAt,
  });

  factory ScreenUsageEventModel.fromJson(Map<String, Object?> json) {
    return ScreenUsageEventModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      startAt: DateTime.parse(json['startAt']! as String),
      endAt: DateTime.parse(json['endAt']! as String),
      estimatedMinutes: json['estimatedMinutes']! as int,
      usageType: ScreenUsageType.values.byName(json['usageType']! as String),
      isNightUsage: json['isNightUsage']! as bool,
      source: DataSource.values.byName(json['source']! as String),
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'startAt': startAt.toIso8601String(),
      'endAt': endAt.toIso8601String(),
      'estimatedMinutes': estimatedMinutes,
      'usageType': usageType.name,
      'isNightUsage': isNightUsage,
      'source': source.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
