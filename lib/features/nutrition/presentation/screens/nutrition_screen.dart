import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/nutrition_providers.dart';

class NutritionScreen extends ConsumerWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendation = ref.watch(todayNutritionRecommendationProvider);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Nutrición circadiana', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 12),
        Text(recommendation.summary),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Proteína objetivo inicial: ${recommendation.proteinTargetGrams.round()} g/día',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(recommendation.carbohydrateStrategy),
        const SizedBox(height: 8),
        Text(recommendation.eveningMealGuidance),
        const SizedBox(height: 24),
        ...recommendation.actions.map(
          (action) => Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text('${action.title}\n\n${action.reason}'),
            ),
          ),
        ),
        Text(
          recommendation.educationalDisclaimer,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
