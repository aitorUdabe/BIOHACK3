import '../../../daily_plan/domain/entities/daily_plan.dart';
import '../../../health_integrations/domain/entities/daily_biometrics.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../../user_profile/domain/entities/user_profile.dart';
import '../entities/nutrition_recommendation.dart';

class NutritionRecommendationInput {
  const NutritionRecommendationInput({
    required this.user,
    this.todayTraining,
    this.yesterdayBiometrics,
    this.previousSleep,
    this.hungerScore,
    this.satietyScore,
    this.energyAfterMealsScore,
  });

  final UserProfile user;
  final TrainingSession? todayTraining;
  final DailyBiometrics? yesterdayBiometrics;
  final SleepRecord? previousSleep;
  final int? hungerScore;
  final int? satietyScore;
  final int? energyAfterMealsScore;
}

class NutritionRecommendationService {
  const NutritionRecommendationService();

  NutritionRecommendation generate(NutritionRecommendationInput input) {
    final weight = input.user.weightKg ?? 75;
    final proteinMultiplier = switch (input.user.mainGoal) {
      MainGoal.muscleGain || MainGoal.performance => 1.8,
      MainGoal.fatLoss => 1.7,
      _ => 1.5,
    };
    final proteinTarget = (weight * proteinMultiplier).roundToDouble();
    final steps = input.yesterdayBiometrics?.totalSteps;
    final training = input.todayTraining;
    final carbs = _carbohydrateStrategy(steps, training);
    final evening = _eveningGuidance(training);
    final actions = <PriorityAction>[
      PriorityAction(
        title: 'Prioriza proteína suficiente repartida en 2-4 comidas.',
        reason: 'Ayuda a saciedad, recuperación y composición corporal.',
        impact: RecommendationImpact.high,
        difficulty: RecommendationDifficulty.easy,
        fallback: 'Incluye una ración proteica clara en tu próxima comida.',
      ),
      if (training != null)
        PriorityAction(
          title: training.isNightTraining
              ? 'Reserva carbohidrato moderado para el post-entreno nocturno.'
              : 'Coloca más carbohidratos alrededor del entrenamiento.',
          reason: 'La nutrición se adapta mejor al gasto y al horario de la sesión.',
          impact: RecommendationImpact.medium,
          difficulty: RecommendationDifficulty.medium,
          fallback: 'Usa una opción simple y fácil de digerir.',
        ),
      if ((input.satietyScore ?? 3) <= 2)
        PriorityAction(
          title: 'Sube fibra y volumen vegetal en la próxima comida.',
          reason: 'La baja saciedad repetida puede dificultar adherencia.',
          impact: RecommendationImpact.medium,
          difficulty: RecommendationDifficulty.easy,
          fallback: 'Añade fruta, verdura o legumbre si encaja contigo.',
        ),
    ];

    return NutritionRecommendation(
      summary:
          'Plan educativo ajustado a objetivo, pasos, entrenamiento y sensibilidad subjetiva.',
      educationalDisclaimer:
          'Orientación educativa de bienestar; no sustituye a un médico o dietista-nutricionista.',
      proteinTargetGrams: proteinTarget,
      carbohydrateStrategy: carbs,
      eveningMealGuidance: evening,
      actions: actions.take(3).toList(growable: false),
    );
  }

  String _carbohydrateStrategy(int? steps, TrainingSession? training) {
    if (training?.isIntense ?? false) {
      return 'Día intenso: concentra carbohidratos alrededor del entrenamiento y recuperación.';
    }
    if ((steps ?? 0) >= 10000) {
      return 'Día activo: permite carbohidratos moderados para sostener energía.';
    }
    if (training == null && (steps ?? 0) < 5000) {
      return 'Día bajo en pasos y sin entreno: modera carbohidratos y prioriza proteína/fibra.';
    }
    return 'Mantén carbohidratos flexibles según hambre, pasos y energía.';
  }

  String _eveningGuidance(TrainingSession? training) {
    if (training?.isNightTraining ?? false) {
      return 'Si entrenas de noche, cena post-entreno ligera: proteína fácil, carbohidrato moderado y grasa baja/moderada.';
    }
    return 'Si cenas cerca del sueño, evita comidas muy voluminosas o muy grasas y observa tu respuesta.';
  }
}
