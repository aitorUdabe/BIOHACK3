import 'package:anti_gravity/features/daily_plan/domain/usecases/daily_plan_generator.dart';
import 'package:anti_gravity/core/utils/clock_time.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures.dart';

void main() {
  group('DailyPlanGenerator', () {
    const generator = DailyPlanGenerator();

    test('returns maximum three priorities', () {
      final user = testUser();
      final sleep = user.usualSleepTime.onDate(baseDate);
      final plan = generator.generate(
        DailyPlanInput(
          user: user,
          date: baseDate,
          previousSleep: sleepRecord(totalMinutes: 300, efficiency: 0.7),
          previousNightMeals: [dinnerBeforeSleep(sleep, const Duration(hours: 1))],
          previousNightScreenUsage: [screenUsage(sleep, minutes: 90)],
          caffeineEvents: [caffeine(sleep.subtract(const Duration(hours: 3)), late: true)],
          plannedTraining: training(sleep.subtract(const Duration(hours: 2)), night: true),
        ),
      );

      expect(plan.priorityActions, hasLength(3));
      expect(plan.priorityActions.first.title, contains('luz natural'));
    });

    test('adapts priorities for night shift workers', () {
      final user = testUser(
        nightShift: true,
        wake: const ClockTime(hour: 20, minute: 0),
        sleep: const ClockTime(hour: 11, minute: 0),
      );
      final plan = generator.generate(DailyPlanInput(user: user, date: baseDate));

      expect(plan.priorityActions, hasLength(3));
      expect(plan.priorityActions.first.title, contains('mañana biológica'));
    });
  });
}
