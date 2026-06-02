import '../../../light_tracking/domain/entities/light_exposure_event.dart';

enum MealType {
  breakfast,
  lunch,
  dinner,
  snack,
  preWorkout,
  postWorkout,
  other,
}

class NutritionEvent {
  const NutritionEvent({
    required this.id,
    required this.userId,
    required this.consumedAt,
    required this.calories,
    required this.proteinGrams,
    required this.carbsGrams,
    required this.fatGrams,
    required this.fiberGrams,
    required this.mealType,
    required this.isNightEating,
    required this.source,
    required this.createdAt,
    this.hoursBeforeSleep,
    this.satietyScore,
    this.energyAfterMealScore,
    this.anxietyAfterMealScore,
  });

  final String id;
  final String userId;
  final DateTime consumedAt;
  final int calories;
  final double proteinGrams;
  final double carbsGrams;
  final double fatGrams;
  final double fiberGrams;
  final MealType mealType;
  final bool isNightEating;
  final double? hoursBeforeSleep;
  final int? satietyScore;
  final int? energyAfterMealScore;
  final int? anxietyAfterMealScore;
  final DataSource source;
  final DateTime createdAt;

  bool get isLateMeal {
    return hoursBeforeSleep != null && hoursBeforeSleep! < 2;
  }
}
