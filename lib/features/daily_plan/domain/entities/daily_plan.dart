import '../../../../core/utils/clock_time.dart';

enum RecommendationImpact { low, medium, high }

enum RecommendationDifficulty { easy, medium, hard }

class PriorityAction {
  const PriorityAction({
    required this.title,
    required this.reason,
    required this.impact,
    required this.difficulty,
    required this.fallback,
  });

  final String title;
  final String reason;
  final RecommendationImpact impact;
  final RecommendationDifficulty difficulty;
  final String fallback;
}

class DailyPlan {
  const DailyPlan({
    required this.id,
    required this.userId,
    required this.date,
    required this.priorityActions,
    required this.morningLightTarget,
    required this.nutritionWindowStart,
    required this.nutritionWindowEnd,
    required this.caffeineCutoffTime,
    required this.trainingRecommendation,
    required this.eveningLightRecommendation,
    required this.sleepPreparationRecommendation,
    required this.createdAt,
  });

  final String id;
  final String userId;
  final DateTime date;
  final List<PriorityAction> priorityActions;
  final String morningLightTarget;
  final ClockTime nutritionWindowStart;
  final ClockTime nutritionWindowEnd;
  final ClockTime caffeineCutoffTime;
  final String trainingRecommendation;
  final String eveningLightRecommendation;
  final String sleepPreparationRecommendation;
  final DateTime createdAt;
}
