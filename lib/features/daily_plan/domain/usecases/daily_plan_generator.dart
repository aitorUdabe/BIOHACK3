import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/clock_time.dart';
import '../../../caffeine/domain/entities/caffeine_event.dart';
import '../../../health_integrations/domain/entities/daily_biometrics.dart';
import '../../../nutrition/domain/entities/nutrition_event.dart';
import '../../../screen_usage/domain/entities/screen_usage_event.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../../user_profile/domain/entities/user_profile.dart';
import '../entities/daily_plan.dart';

class DailyPlanInput {
  const DailyPlanInput({
    required this.user,
    required this.date,
    this.previousSleep,
    this.previousNightMeals = const [],
    this.previousNightScreenUsage = const [],
    this.caffeineEvents = const [],
    this.plannedTraining,
    this.yesterdayBiometrics,
  });

  final UserProfile user;
  final DateTime date;
  final SleepRecord? previousSleep;
  final List<NutritionEvent> previousNightMeals;
  final List<ScreenUsageEvent> previousNightScreenUsage;
  final List<CaffeineEvent> caffeineEvents;
  final TrainingSession? plannedTraining;
  final DailyBiometrics? yesterdayBiometrics;
}

class DailyPlanGenerator {
  const DailyPlanGenerator();

  DailyPlan generate(DailyPlanInput input) {
    final user = input.user;
    final wake = user.usualWakeTime;
    final sleep = user.usualSleepTime;
    final caffeineCutoff = sleep.add(const Duration(hours: -8));
    final nutritionWindowEnd = sleep.add(const Duration(hours: -3));
    final actions = <PriorityAction>[];

    actions.add(
      PriorityAction(
        title:
            'Sal a recibir luz natural durante 15 minutos antes de ${wake.add(const Duration(hours: 1))}.',
        reason: 'La luz temprana es el ancla principal del ritmo circadiano.',
        impact: RecommendationImpact.high,
        difficulty: RecommendationDifficulty.easy,
        fallback: 'Si no puedes salir, acércate a una ventana y sal más tarde.',
      ),
    );

    if (input.caffeineEvents.any((event) => event.isLateCaffeine)) {
      actions.add(
        PriorityAction(
          title: 'Evita cafeína después de $caffeineCutoff.',
          reason: 'Ayer hubo cafeína tardía; puede afectar sueño en algunos usuarios.',
          impact: RecommendationImpact.medium,
          difficulty: RecommendationDifficulty.medium,
          fallback: 'Cambia a descafeinado o infusión si buscas ritual.',
        ),
      );
    }

    if (input.previousNightMeals.any((meal) => meal.isNightEating)) {
      actions.add(
        PriorityAction(
          title: 'Intenta terminar la cena al menos 3 horas antes de dormir.',
          reason: 'La comida muy cercana al sueño puede empeorar recuperación.',
          impact: RecommendationImpact.high,
          difficulty: RecommendationDifficulty.medium,
          fallback: 'Si cenas tarde, prioriza proteína ligera y baja grasa.',
        ),
      );
    }

    if (input.plannedTraining?.isNightTraining ?? false) {
      actions.add(
        PriorityAction(
          title: 'Entreno nocturno: cena ligera, baja luz y respiración 5-10 min.',
          reason: 'El protocolo reduce activación sin prohibir entrenar tarde.',
          impact: RecommendationImpact.high,
          difficulty: RecommendationDifficulty.medium,
          fallback: 'Si vas justo de tiempo, haz solo luz baja y 5 respiraciones lentas.',
        ),
      );
    }

    if (input.previousNightScreenUsage.isNotEmpty) {
      actions.add(
        PriorityAction(
          title: 'Reduce luz azul y brillo del móvil 60 minutos antes de dormir.',
          reason: 'El uso nocturno de pantalla es un factor circadiano modificable.',
          impact: RecommendationImpact.medium,
          difficulty: RecommendationDifficulty.easy,
          fallback: 'Activa modo noche y deja el móvil cargando fuera de la cama.',
        ),
      );
    }

    if (_hadLowSleep(input.previousSleep)) {
      actions.add(
        PriorityAction(
          title: 'Hoy prioriza recuperación: paseo suave y rutina de sueño simple.',
          reason: 'El sueño anterior fue bajo o incompleto.',
          impact: RecommendationImpact.medium,
          difficulty: RecommendationDifficulty.easy,
          fallback: 'Mantén solo 10 minutos de paseo y hora fija de apagado.',
        ),
      );
    }

    if (user.isNightShiftWorker) {
      actions
        ..clear()
        ..addAll(_nightShiftActions(user));
    }

    final selectedActions =
        actions.take(AppConstants.maxDailyPriorities).toList(growable: false);

    return DailyPlan(
      id: 'daily-plan-${user.id}-${input.date.toIso8601String()}',
      userId: user.id,
      date: DateTime(input.date.year, input.date.month, input.date.day),
      priorityActions: selectedActions,
      morningLightTarget:
          '15 minutos de luz natural dentro de los 60 minutos tras despertar.',
      nutritionWindowStart: wake.add(const Duration(minutes: 45)),
      nutritionWindowEnd: nutritionWindowEnd,
      caffeineCutoffTime: caffeineCutoff,
      trainingRecommendation: _trainingRecommendation(input.plannedTraining),
      eveningLightRecommendation:
          'Baja intensidad de luz y pantallas durante la última hora del día.',
      sleepPreparationRecommendation:
          'Cierre del día con luz cálida, baja activación y rutina repetible.',
      createdAt: DateTime.now(),
    );
  }

  bool _hadLowSleep(SleepRecord? record) {
    if (record == null) {
      return true;
    }
    return record.totalSleepMinutes < 390 || record.sleepEfficiency < 0.8;
  }

  String _trainingRecommendation(TrainingSession? session) {
    if (session == null) {
      return 'Mantén movimiento suave y adapta carbohidratos a pasos reales.';
    }
    if (session.isNightTraining) {
      return 'Entrenamiento nocturno permitido con protocolo de bajada de activación.';
    }
    if (session.isIntense) {
      return 'Día de entrenamiento intenso: prioriza recuperación y carbohidratos alrededor de la sesión.';
    }
    return 'Entrenamiento moderado: mantén proteína, hidratación y luz de mañana.';
  }

  List<PriorityAction> _nightShiftActions(UserProfile user) {
    return [
      PriorityAction(
        title: 'Usa tu despertar real como mañana biológica y busca luz al levantarte.',
        reason: 'En turno nocturno se desplazan las ventanas circadianas.',
        impact: RecommendationImpact.high,
        difficulty: RecommendationDifficulty.medium,
        fallback: 'Si no hay sol, usa luz interior intensa al inicio del periodo activo.',
      ),
      PriorityAction(
        title: 'Reduce luz intensa al terminar el turno antes de dormir de día.',
        reason: 'La señal de oscuridad ayuda a preparar sueño diurno.',
        impact: RecommendationImpact.high,
        difficulty: RecommendationDifficulty.medium,
        fallback: 'Usa gafas de sol al salir y dormitorio oscuro.',
      ),
      PriorityAction(
        title: 'Planifica comidas ligeras en madrugada y evita cenas muy grasas.',
        reason: 'La digestión nocturna puede ser más sensible en algunas personas.',
        impact: RecommendationImpact.medium,
        difficulty: RecommendationDifficulty.medium,
        fallback: 'Elige snack proteico ligero si necesitas comer durante el turno.',
      ),
    ];
  }
}
