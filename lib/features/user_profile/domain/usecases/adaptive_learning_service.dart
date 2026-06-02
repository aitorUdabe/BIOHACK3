import '../../../../core/constants/app_constants.dart';
import '../../../circadian_score/domain/entities/circadian_score.dart';
import '../entities/adaptive_learning.dart';

class AdaptiveLearningService {
  const AdaptiveLearningService();

  AdaptiveLearningSummary analyze(List<DailyHabitOutcome> outcomes) {
    if (outcomes.isEmpty) {
      return const AdaptiveLearningSummary(
        isCalibration: true,
        baselineSleepScore: 0,
        baselineEnergyScore: 0,
        insights: [
          AdaptiveInsight(
            title: 'Calibración pendiente',
            explanation:
                'Aún no hay datos suficientes. Durante 14 días se mostrarán hipótesis iniciales.',
            confidence: ConfidenceLevel.low,
            isHypothesis: true,
          ),
        ],
        toleranceAdjustments: {},
      );
    }

    final baselineSleep = _average(outcomes.map((item) => item.sleepScoreNextDay));
    final baselineEnergy =
        _average(outcomes.map((item) => item.energyScoreNextDay.toDouble()));
    final isCalibration = outcomes.length < AppConstants.calibrationDays;
    final insights = <AdaptiveInsight>[
      _patternInsight(
        title: 'Cena tardía vs sueño',
        outcomes: outcomes,
        exposed: (item) => item.lateDinner,
        metric: (item) => item.sleepScoreNextDay,
        lowerIsWorse: true,
        negativeMessage:
            'Cuando cenas tarde, tu sueño registrado tiende a empeorar al día siguiente. Prueba adelantar o aligerar la cena.',
        neutralMessage:
            'No se observa todavía un impacto consistente de la cena tardía. Mantendremos una recomendación prudente.',
        isCalibration: isCalibration,
      ),
      _patternInsight(
        title: 'Cafeína tardía vs sueño',
        outcomes: outcomes,
        exposed: (item) => item.lateCaffeine,
        metric: (item) => item.sleepScoreNextDay,
        lowerIsWorse: true,
        negativeMessage:
            'La cafeína tardía aparece asociada a peor sueño en tus registros. Hoy adelanta el último consumo.',
        neutralMessage:
            'Aún no hay señal clara entre cafeína tardía y sueño. Seguimos acumulando evidencia.',
        isCalibration: isCalibration,
      ),
      _patternInsight(
        title: 'Móvil nocturno vs sueño',
        outcomes: outcomes,
        exposed: (item) => item.nightScreenMinutes > 45,
        metric: (item) => item.sleepScoreNextDay,
        lowerIsWorse: true,
        negativeMessage:
            'Cuando usas el móvil más de 45 minutos por la noche, tu sueño registrado tiende a ser peor.',
        neutralMessage:
            'El móvil nocturno aún no muestra un patrón consistente. La recomendación base se mantiene.',
        isCalibration: isCalibration,
      ),
      _patternInsight(
        title: 'Luz matutina vs energía',
        outcomes: outcomes,
        exposed: (item) => item.morningLightMinutes >= 15,
        metric: (item) => item.energyScoreNextDay.toDouble(),
        lowerIsWorse: false,
        negativeMessage:
            'Los días con al menos 15 minutos de luz matutina suelen preceder mejor energía registrada.',
        neutralMessage:
            'Aún no hay señal clara entre luz matutina y energía. Sigue registrándola para calibrar.',
        isCalibration: isCalibration,
      ),
      _patternInsight(
        title: 'Entreno nocturno vs recuperación',
        outcomes: outcomes,
        exposed: (item) => item.nightTraining,
        metric: (item) => item.sleepScoreNextDay,
        lowerIsWorse: true,
        negativeMessage:
            'Tras entrenamientos nocturnos, tu recuperación parece bajar. Prioriza protocolo post-entreno y luz baja.',
        neutralMessage:
            'El entrenamiento nocturno no muestra todavía un impacto claro. Lo modularemos con más datos.',
        isCalibration: isCalibration,
      ),
    ];

    return AdaptiveLearningSummary(
      isCalibration: isCalibration,
      baselineSleepScore: baselineSleep,
      baselineEnergyScore: baselineEnergy,
      insights: insights,
      toleranceAdjustments: _toleranceAdjustments(insights),
    );
  }

  AdaptiveInsight _patternInsight({
    required String title,
    required List<DailyHabitOutcome> outcomes,
    required bool Function(DailyHabitOutcome item) exposed,
    required double Function(DailyHabitOutcome item) metric,
    required bool lowerIsWorse,
    required String negativeMessage,
    required String neutralMessage,
    required bool isCalibration,
  }) {
    final exposedItems = outcomes.where(exposed).toList();
    final controlItems = outcomes.where((item) => !exposed(item)).toList();

    if (exposedItems.length < AppConstants.minimumComparableEvents ||
        controlItems.length < 2) {
      return AdaptiveInsight(
        title: title,
        explanation: isCalibration
            ? 'Hipótesis inicial: faltan eventos comparables para personalizar con seguridad.'
            : 'Datos insuficientes para una conclusión personalizada prudente.',
        confidence: ConfidenceLevel.low,
        isHypothesis: true,
      );
    }

    final exposedAverage = _average(exposedItems.map(metric));
    final controlAverage = _average(controlItems.map(metric));
    final delta = exposedAverage - controlAverage;
    final signal = lowerIsWorse ? delta <= -8 : delta >= 1;
    final confidence = exposedItems.length >= 15
        ? ConfidenceLevel.high
        : ConfidenceLevel.medium;

    return AdaptiveInsight(
      title: title,
      explanation: signal ? negativeMessage : neutralMessage,
      confidence: confidence,
      isHypothesis: isCalibration,
    );
  }

  Map<String, double> _toleranceAdjustments(List<AdaptiveInsight> insights) {
    final adjustments = <String, double>{};
    for (final insight in insights) {
      if (insight.confidence == ConfidenceLevel.low) {
        continue;
      }
      final isNegative = insight.explanation.contains('empeorar') ||
          insight.explanation.contains('peor') ||
          insight.explanation.contains('bajar');
      adjustments[insight.title] = isNegative ? 1.15 : 0.9;
    }
    return adjustments;
  }

  double _average(Iterable<double> values) {
    if (values.isEmpty) {
      return 0;
    }
    return values.reduce((previousValue, nextValue) {
      return previousValue + nextValue;
    }) / values.length;
  }
}
