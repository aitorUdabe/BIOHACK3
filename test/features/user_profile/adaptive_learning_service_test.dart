import 'package:anti_gravity/features/circadian_score/domain/entities/circadian_score.dart';
import 'package:anti_gravity/features/user_profile/domain/entities/adaptive_learning.dart';
import 'package:anti_gravity/features/user_profile/domain/usecases/adaptive_learning_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures.dart';

void main() {
  group('AdaptiveLearningService', () {
    const service = AdaptiveLearningService();

    test('stays in calibration under 14 days and keeps cautious insights', () {
      final outcomes = List.generate(
        7,
        (index) => DailyHabitOutcome(
          date: baseDate.add(Duration(days: index)),
          lateDinner: index.isEven,
          lateCaffeine: false,
          nightScreenMinutes: 20,
          morningLightMinutes: 15,
          nightTraining: false,
          sleepScoreNextDay: 75,
          energyScoreNextDay: 4,
        ),
      );

      final summary = service.analyze(outcomes);

      expect(summary.isCalibration, isTrue);
      expect(summary.insights.every((item) => item.isHypothesis), isTrue);
    });

    test('detects repeated night screen pattern after comparable events', () {
      final exposed = List.generate(
        6,
        (index) => DailyHabitOutcome(
          date: baseDate.add(Duration(days: index)),
          lateDinner: false,
          lateCaffeine: false,
          nightScreenMinutes: 70,
          morningLightMinutes: 5,
          nightTraining: false,
          sleepScoreNextDay: 55,
          energyScoreNextDay: 2,
        ),
      );
      final controls = List.generate(
        8,
        (index) => DailyHabitOutcome(
          date: baseDate.add(Duration(days: 7 + index)),
          lateDinner: false,
          lateCaffeine: false,
          nightScreenMinutes: 10,
          morningLightMinutes: 20,
          nightTraining: false,
          sleepScoreNextDay: 82,
          energyScoreNextDay: 4,
        ),
      );

      final summary = service.analyze([...exposed, ...controls]);
      final insight =
          summary.insights.firstWhere((item) => item.title == 'Móvil nocturno vs sueño');

      expect(summary.isCalibration, isFalse);
      expect(insight.confidence, ConfidenceLevel.medium);
      expect(insight.explanation, contains('tiende a ser peor'));
    });
  });
}
