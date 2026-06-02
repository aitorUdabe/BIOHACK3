import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../domain/entities/sleep_record.dart';

class SleepRecordModel extends SleepRecord {
  const SleepRecordModel({
    required super.id,
    required super.userId,
    required super.sleepStart,
    required super.sleepEnd,
    required super.totalSleepMinutes,
    required super.sleepEfficiency,
    required super.source,
    required super.createdAt,
    super.deepSleepMinutes,
    super.remSleepMinutes,
    super.awakenings,
  });

  factory SleepRecordModel.fromJson(Map<String, Object?> json) {
    return SleepRecordModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      sleepStart: DateTime.parse(json['sleepStart']! as String),
      sleepEnd: DateTime.parse(json['sleepEnd']! as String),
      totalSleepMinutes: json['totalSleepMinutes']! as int,
      sleepEfficiency: (json['sleepEfficiency']! as num).toDouble(),
      deepSleepMinutes: json['deepSleepMinutes'] as int?,
      remSleepMinutes: json['remSleepMinutes'] as int?,
      awakenings: json['awakenings'] as int?,
      source: DataSource.values.byName(json['source']! as String),
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'sleepStart': sleepStart.toIso8601String(),
      'sleepEnd': sleepEnd.toIso8601String(),
      'totalSleepMinutes': totalSleepMinutes,
      'sleepEfficiency': sleepEfficiency,
      'deepSleepMinutes': deepSleepMinutes,
      'remSleepMinutes': remSleepMinutes,
      'awakenings': awakenings,
      'source': source.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
