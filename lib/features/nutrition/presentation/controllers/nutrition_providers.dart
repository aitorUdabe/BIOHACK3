import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../health_integrations/domain/entities/daily_biometrics.dart';
import '../../../training/domain/entities/training_session.dart';
import '../../../user_profile/presentation/controllers/user_profile_providers.dart';
import '../../domain/entities/nutrition_recommendation.dart';
import '../../domain/usecases/nutrition_recommendation_service.dart';

final nutritionRecommendationServiceProvider =
    Provider<NutritionRecommendationService>((ref) {
  return const NutritionRecommendationService();
});

final todayNutritionRecommendationProvider =
    Provider<NutritionRecommendation>((ref) {
  final user = ref.watch(localUserProfileProvider);
  final now = DateTime.now();
  final service = ref.watch(nutritionRecommendationServiceProvider);

  return service.generate(
    NutritionRecommendationInput(
      user: user.copyWith(weightKg: user.weightKg ?? 78),
      yesterdayBiometrics: DailyBiometrics(
        id: 'bio-demo',
        userId: user.id,
        date: now.subtract(const Duration(days: 1)),
        totalSteps: 11000,
        subjectiveEnergyScore: 4,
        subjectiveStressScore: 2,
        createdAt: now,
      ),
      todayTraining: TrainingSession(
        id: 'nutrition-training',
        userId: user.id,
        startAt: DateTime(now.year, now.month, now.day, 21),
        endAt: DateTime(now.year, now.month, now.day, 22),
        intensity: TrainingIntensity.high,
        trainingType: TrainingType.strength,
        caloriesBurned: 450,
        isNightTraining: true,
        createdAt: now,
      ),
    ),
  );
});
