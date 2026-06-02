import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/daily_plan_providers.dart';

class DailyPlanScreen extends ConsumerWidget {
  const DailyPlanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plan = ref.watch(todayDailyPlanProvider);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Plan diario', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text(plan.morningLightTarget),
        const SizedBox(height: 24),
        ...plan.priorityActions.indexed.map(
          (entry) => Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Prioridad ${entry.$1 + 1}',
                      style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: 8),
                  Text(entry.$2.title,
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text(entry.$2.reason),
                  const SizedBox(height: 8),
                  Text('Alternativa: ${entry.$2.fallback}'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text('Cafeína: cortar sobre ${plan.caffeineCutoffTime}'),
        Text('Ventana nutricional sugerida: ${plan.nutritionWindowStart} - ${plan.nutritionWindowEnd}'),
        Text(plan.trainingRecommendation),
      ],
    );
  }
}
