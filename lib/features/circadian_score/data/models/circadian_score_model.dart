import '../../domain/entities/circadian_score.dart';

class CircadianScoreModel extends CircadianScore {
  const CircadianScoreModel({
    required super.id,
    required super.userId,
    required super.date,
    required super.totalScore,
    required super.lightScore,
    required super.nutritionScore,
    required super.sleepScore,
    required super.screenPenalty,
    required super.nightEatingPenalty,
    required super.lateCaffeinePenalty,
    required super.explanation,
    required super.createdAt,
  });

  factory CircadianScoreModel.fromJson(Map<String, Object?> json) {
    return CircadianScoreModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      date: DateTime.parse(json['date']! as String),
      totalScore: (json['totalScore']! as num).toDouble(),
      lightScore: (json['lightScore']! as num).toDouble(),
      nutritionScore: (json['nutritionScore']! as num).toDouble(),
      sleepScore: (json['sleepScore']! as num).toDouble(),
      screenPenalty: (json['screenPenalty']! as num).toDouble(),
      nightEatingPenalty: (json['nightEatingPenalty']! as num).toDouble(),
      lateCaffeinePenalty: (json['lateCaffeinePenalty']! as num).toDouble(),
      explanation: json['explanation']! as String,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String(),
      'totalScore': totalScore,
      'lightScore': lightScore,
      'nutritionScore': nutritionScore,
      'sleepScore': sleepScore,
      'screenPenalty': screenPenalty,
      'nightEatingPenalty': nightEatingPenalty,
      'lateCaffeinePenalty': lateCaffeinePenalty,
      'explanation': explanation,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
