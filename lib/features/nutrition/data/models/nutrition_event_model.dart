import '../../../light_tracking/domain/entities/light_exposure_event.dart';
import '../../domain/entities/nutrition_event.dart';

class NutritionEventModel extends NutritionEvent {
  const NutritionEventModel({
    required super.id,
    required super.userId,
    required super.consumedAt,
    required super.calories,
    required super.proteinGrams,
    required super.carbsGrams,
    required super.fatGrams,
    required super.fiberGrams,
    required super.mealType,
    required super.isNightEating,
    required super.source,
    required super.createdAt,
    super.hoursBeforeSleep,
    super.satietyScore,
    super.energyAfterMealScore,
    super.anxietyAfterMealScore,
  });

  factory NutritionEventModel.fromJson(Map<String, Object?> json) {
    return NutritionEventModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      consumedAt: DateTime.parse(json['consumedAt']! as String),
      calories: json['calories']! as int,
      proteinGrams: (json['proteinGrams']! as num).toDouble(),
      carbsGrams: (json['carbsGrams']! as num).toDouble(),
      fatGrams: (json['fatGrams']! as num).toDouble(),
      fiberGrams: (json['fiberGrams']! as num).toDouble(),
      mealType: MealType.values.byName(json['mealType']! as String),
      isNightEating: json['isNightEating']! as bool,
      hoursBeforeSleep: (json['hoursBeforeSleep'] as num?)?.toDouble(),
      satietyScore: json['satietyScore'] as int?,
      energyAfterMealScore: json['energyAfterMealScore'] as int?,
      anxietyAfterMealScore: json['anxietyAfterMealScore'] as int?,
      source: DataSource.values.byName(json['source']! as String),
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'consumedAt': consumedAt.toIso8601String(),
      'calories': calories,
      'proteinGrams': proteinGrams,
      'carbsGrams': carbsGrams,
      'fatGrams': fatGrams,
      'fiberGrams': fiberGrams,
      'mealType': mealType.name,
      'isNightEating': isNightEating,
      'hoursBeforeSleep': hoursBeforeSleep,
      'satietyScore': satietyScore,
      'energyAfterMealScore': energyAfterMealScore,
      'anxietyAfterMealScore': anxietyAfterMealScore,
      'source': source.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
