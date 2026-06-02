import '../../../daily_plan/domain/entities/daily_plan.dart';

class NutritionRecommendation {
  const NutritionRecommendation({
    required this.summary,
    required this.educationalDisclaimer,
    required this.proteinTargetGrams,
    required this.carbohydrateStrategy,
    required this.eveningMealGuidance,
    required this.actions,
  });

  final String summary;
  final String educationalDisclaimer;
  final double proteinTargetGrams;
  final String carbohydrateStrategy;
  final String eveningMealGuidance;
  final List<PriorityAction> actions;
}
