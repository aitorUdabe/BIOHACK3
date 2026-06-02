import '../../../../core/utils/clock_time.dart';
import '../../domain/entities/daily_plan.dart';

class DailyPlanModel extends DailyPlan {
  const DailyPlanModel({
    required super.id,
    required super.userId,
    required super.date,
    required super.priorityActions,
    required super.morningLightTarget,
    required super.nutritionWindowStart,
    required super.nutritionWindowEnd,
    required super.caffeineCutoffTime,
    required super.trainingRecommendation,
    required super.eveningLightRecommendation,
    required super.sleepPreparationRecommendation,
    required super.createdAt,
  });

  factory DailyPlanModel.fromJson(Map<String, Object?> json) {
    return DailyPlanModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      date: DateTime.parse(json['date']! as String),
      priorityActions: (json['priorityActions']! as List<Object?>)
          .map((item) => Map<String, Object?>.from(item! as Map))
          .map(_priorityFromJson)
          .toList(),
      morningLightTarget: json['morningLightTarget']! as String,
      nutritionWindowStart:
          ClockTime.parse(json['nutritionWindowStart']! as String),
      nutritionWindowEnd:
          ClockTime.parse(json['nutritionWindowEnd']! as String),
      caffeineCutoffTime:
          ClockTime.parse(json['caffeineCutoffTime']! as String),
      trainingRecommendation: json['trainingRecommendation']! as String,
      eveningLightRecommendation:
          json['eveningLightRecommendation']! as String,
      sleepPreparationRecommendation:
          json['sleepPreparationRecommendation']! as String,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String(),
      'priorityActions': priorityActions.map(_priorityToJson).toList(),
      'morningLightTarget': morningLightTarget,
      'nutritionWindowStart': nutritionWindowStart.toString(),
      'nutritionWindowEnd': nutritionWindowEnd.toString(),
      'caffeineCutoffTime': caffeineCutoffTime.toString(),
      'trainingRecommendation': trainingRecommendation,
      'eveningLightRecommendation': eveningLightRecommendation,
      'sleepPreparationRecommendation': sleepPreparationRecommendation,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}

PriorityAction _priorityFromJson(Map<String, Object?> json) {
  return PriorityAction(
    title: json['title']! as String,
    reason: json['reason']! as String,
    impact: RecommendationImpact.values.byName(json['impact']! as String),
    difficulty:
        RecommendationDifficulty.values.byName(json['difficulty']! as String),
    fallback: json['fallback']! as String,
  );
}

Map<String, Object?> _priorityToJson(PriorityAction action) {
  return {
    'title': action.title,
    'reason': action.reason,
    'impact': action.impact.name,
    'difficulty': action.difficulty.name,
    'fallback': action.fallback,
  };
}
