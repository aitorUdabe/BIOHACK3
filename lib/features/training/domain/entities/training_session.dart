enum TrainingIntensity { low, moderate, high, competition }

enum TrainingType {
  strength,
  crossfit,
  hyrox,
  running,
  cycling,
  swimming,
  mobility,
  other,
}

class TrainingSession {
  const TrainingSession({
    required this.id,
    required this.userId,
    required this.startAt,
    required this.endAt,
    required this.intensity,
    required this.trainingType,
    required this.caloriesBurned,
    required this.isNightTraining,
    required this.createdAt,
    this.perceivedExertion,
  });

  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final TrainingIntensity intensity;
  final TrainingType trainingType;
  final int caloriesBurned;
  final bool isNightTraining;
  final int? perceivedExertion;
  final DateTime createdAt;

  Duration get duration => endAt.difference(startAt);

  bool get isIntense {
    return intensity == TrainingIntensity.high ||
        intensity == TrainingIntensity.competition;
  }
}
