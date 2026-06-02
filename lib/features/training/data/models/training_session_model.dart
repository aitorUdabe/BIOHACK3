import '../../domain/entities/training_session.dart';

class TrainingSessionModel extends TrainingSession {
  const TrainingSessionModel({
    required super.id,
    required super.userId,
    required super.startAt,
    required super.endAt,
    required super.intensity,
    required super.trainingType,
    required super.caloriesBurned,
    required super.isNightTraining,
    required super.createdAt,
    super.perceivedExertion,
  });

  factory TrainingSessionModel.fromJson(Map<String, Object?> json) {
    return TrainingSessionModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      startAt: DateTime.parse(json['startAt']! as String),
      endAt: DateTime.parse(json['endAt']! as String),
      intensity: TrainingIntensity.values.byName(json['intensity']! as String),
      trainingType: TrainingType.values.byName(json['trainingType']! as String),
      caloriesBurned: json['caloriesBurned']! as int,
      isNightTraining: json['isNightTraining']! as bool,
      perceivedExertion: json['perceivedExertion'] as int?,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'startAt': startAt.toIso8601String(),
      'endAt': endAt.toIso8601String(),
      'intensity': intensity.name,
      'trainingType': trainingType.name,
      'caloriesBurned': caloriesBurned,
      'isNightTraining': isNightTraining,
      'perceivedExertion': perceivedExertion,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
