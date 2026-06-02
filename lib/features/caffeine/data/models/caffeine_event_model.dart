import '../../domain/entities/caffeine_event.dart';

class CaffeineEventModel extends CaffeineEvent {
  const CaffeineEventModel({
    required super.id,
    required super.userId,
    required super.consumedAt,
    required super.caffeineMg,
    required super.sourceType,
    required super.isLateCaffeine,
    required super.createdAt,
  });

  factory CaffeineEventModel.fromJson(Map<String, Object?> json) {
    return CaffeineEventModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      consumedAt: DateTime.parse(json['consumedAt']! as String),
      caffeineMg: json['caffeineMg']! as int,
      sourceType:
          CaffeineSourceType.values.byName(json['sourceType']! as String),
      isLateCaffeine: json['isLateCaffeine']! as bool,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'consumedAt': consumedAt.toIso8601String(),
      'caffeineMg': caffeineMg,
      'sourceType': sourceType.name,
      'isLateCaffeine': isLateCaffeine,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
