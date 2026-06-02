import 'package:anti_gravity/core/utils/clock_time.dart';
import 'package:anti_gravity/features/shift_work/domain/usecases/shift_work_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures.dart';

void main() {
  group('ShiftWorkService', () {
    const service = ShiftWorkService();

    test('generates shifted recommendations for night workers', () {
      final user = testUser(
        nightShift: true,
        wake: const ClockTime(hour: 18, minute: 30),
        sleep: const ClockTime(hour: 10, minute: 0),
      );

      final plan = service.generatePlan(user);

      expect(plan.isNightShiftMode, isTrue);
      expect(plan.lightAtWakeRecommendation, contains('mañana biológica'));
      expect(plan.caffeineRecommendation, contains('sueño real'));
    });

    test('suggests night shift mode after three inverted sleep records', () {
      final records = List.generate(
        3,
        (index) => sleepRecord(
          start: DateTime(2026, 6, index + 1, 8),
          end: DateTime(2026, 6, index + 1, 15),
        ),
      );

      expect(service.shouldSuggestNightShiftMode(records), isTrue);
    });
  });
}
