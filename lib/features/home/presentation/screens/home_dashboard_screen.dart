import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../shared/components/score_ring.dart';
import '../../../../shared/widgets/action_card.dart';
import '../../../circadian_score/presentation/controllers/circadian_score_providers.dart';
import '../../../daily_plan/presentation/controllers/daily_plan_providers.dart';

class HomeDashboardScreen extends ConsumerWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(todayCircadianScoreProvider);
    final plan = ref.watch(todayDailyPlanProvider);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Inicio', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                ScoreRing(score: score.score.totalScore, label: 'Circadian'),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(score.score.explanation),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text('3 prioridades de hoy', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        ...plan.priorityActions.map(
          (action) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ActionCard(
              title: action.title,
              subtitle: action.reason,
              icon: Icons.bolt_outlined,
              onTap: () => context.go(AppRoutes.plan),
            ),
          ),
        ),
      ],
    );
  }
}
