import 'package:anti_gravity/features/health_integrations/domain/entities/daily_biometrics.dart';
import 'package:anti_gravity/features/nutrition/domain/usecases/nutrition_recommendation_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures.dart';

void main() {
  group('NutritionRecommendationService', () {
    const service = NutritionRecommendationService();

    test('prioritizes protein and adjusts carbs around night training', () {
      final user = testUser();
      final result = service.generate(
        NutritionRecommendationInput(
          user: user,
          todayTraining: training(DateTime(2026, 6, 2, 21), night: true),
          yesterdayBiometrics: DailyBiometrics(
            id: 'bio-1',
            userId: user.id,
            date: baseDate,
            totalSteps: 12000,
            createdAt: baseDate,
          ),
        ),
      );

      expect(result.proteinTargetGrams, greaterThanOrEqualTo(120));
      expect(result.eveningMealGuidance, contains('post-entreno'));
      expect(result.educationalDisclaimer, contains('no sustituye'));
    });

    test('moderates carbs on low-step rest days without absolute language', () {
      final user = testUser();
      final result = service.generate(
        NutritionRecommendationInput(
          user: user,
          yesterdayBiometrics: DailyBiometrics(
            id: 'bio-2',
            userId: user.id,
            date: baseDate,
            totalSteps: 2500,
            createdAt: baseDate,
          ),
        ),
      );

      expect(result.carbohydrateStrategy, contains('modera'));
      expect(result.carbohydrateStrategy, isNot(contains('prohibido')));
    });
  });
}
