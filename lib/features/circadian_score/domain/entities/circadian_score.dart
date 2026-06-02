enum ConfidenceLevel { low, medium, high }

class CircadianScore {
  const CircadianScore({
    required this.id,
    required this.userId,
    required this.date,
    required this.totalScore,
    required this.lightScore,
    required this.nutritionScore,
    required this.sleepScore,
    required this.screenPenalty,
    required this.nightEatingPenalty,
    required this.lateCaffeinePenalty,
    required this.explanation,
    required this.createdAt,
  });

  final String id;
  final String userId;
  final DateTime date;
  final double totalScore;
  final double lightScore;
  final double nutritionScore;
  final double sleepScore;
  final double screenPenalty;
  final double nightEatingPenalty;
  final double lateCaffeinePenalty;
  final String explanation;
  final DateTime createdAt;
}

class CircadianScoreAnalysis {
  const CircadianScoreAnalysis({
    required this.score,
    required this.behaviorScore,
    required this.trainingPenalty,
    required this.confidence,
    required this.recommendations,
    required this.breakdown,
  });

  final CircadianScore score;
  final double behaviorScore;
  final double trainingPenalty;
  final ConfidenceLevel confidence;
  final List<String> recommendations;
  final Map<String, double> breakdown;
}
