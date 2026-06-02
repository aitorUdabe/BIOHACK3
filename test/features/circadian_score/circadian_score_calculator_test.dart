import 'package:anti_gravity/features/circadian_score/domain/entities/circadian_score.dart';
import 'package:anti_gravity/features/circadian_score/domain/usecases/circadian_score_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures.dart';

void main() {
  group('CircadianScoreCalculator', () {
    const calculator = CircadianScoreCalculator();

    test('scores high with morning light, early dinner and good sleep', () {
      final user = testUser();
      final wake = user.usualWakeTime.onDate(baseDate);
      final sleep = user.usualSleepTime.onDate(baseDate);

      final result = calculator.calculate(
        CircadianScoreInput(
          userId: user.id,
          date: baseDate,
          wakeUpAt: wake,
          targetSleepAt: sleep,
          lightEvents: [morningLight(wake)],
          nutritionEvents: [dinnerBeforeSleep(sleep, const Duration(hours: 3))],
          sleepRecord: sleepRecord(),
        ),
      );

      expect(result.score.totalScore, greaterThanOrEqualTo(85));
      expect(result.score.lightScore, 100);
      expect(result.confidence, ConfidenceLevel.medium);
    });

    test('uses neutral sleep score and low confidence without wearable sleep data', () {
      final user = testUser();
      final wake = user.usualWakeTime.onDate(baseDate);
      final sleep = user.usualSleepTime.onDate(baseDate);

      final result = calculator.calculate(
        CircadianScoreInput(
          userId: user.id,
          date: baseDate,
          wakeUpAt: wake,
          targetSleepAt: sleep,
          lightEvents: [morningLight(wake, delayMinutes: 150)],
          nutritionEvents: [dinnerBeforeSleep(sleep, const Duration(hours: 1))],
        ),
      );

      expect(result.score.sleepScore, 60);
      expect(result.confidence, ConfidenceLevel.medium);
      expect(result.score.explanation, contains('Faltan datos de sueño'));
    });

    test('caps score below zero when penalties are severe', () {
      final user = testUser();
      final wake = user.usualWakeTime.onDate(baseDate);
      final sleep = user.usualSleepTime.onDate(baseDate);

      final result = calculator.calculate(
        CircadianScoreInput(
          userId: user.id,
          date: baseDate,
          wakeUpAt: wake,
          targetSleepAt: sleep,
          nutritionEvents: [dinnerBeforeSleep(sleep, const Duration(minutes: 30))],
          sleepRecord: sleepRecord(totalMinutes: 240, efficiency: 0.45),
          caffeineEvents: [caffeine(sleep.subtract(const Duration(hours: 2)), late: true)],
          screenUsageEvents: [screenUsage(sleep, minutes: 120)],
          trainingSessions: [training(sleep.subtract(const Duration(hours: 2)), night: true)],
          artificialLightMinutesAtNight: 180,
        ),
      );

      expect(result.score.totalScore, inInclusiveRange(0, 100));
      expect(result.score.nightEatingPenalty, 15);
      expect(result.score.lateCaffeinePenalty, 10);
      expect(result.score.screenPenalty, 10);
    });
  });
}
