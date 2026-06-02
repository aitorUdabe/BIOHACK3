import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/components/score_ring.dart';
import '../controllers/circadian_score_providers.dart';

class CircadianScoreScreen extends ConsumerWidget {
  const CircadianScoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analysis = ref.watch(todayCircadianScoreProvider);
    final score = analysis.score;
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Circadian Score', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 20),
        Center(child: ScoreRing(score: score.totalScore, label: '0-100')),
        const SizedBox(height: 20),
        Text(score.explanation),
        const SizedBox(height: 24),
        Text('Breakdown', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        ...analysis.breakdown.entries.map(
          (entry) => ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(entry.key),
            trailing: Text(entry.value.round().toString()),
          ),
        ),
        const SizedBox(height: 16),
        Text('Recomendaciones', style: Theme.of(context).textTheme.titleLarge),
        ...analysis.recommendations.map((item) => ListTile(title: Text(item))),
      ],
    );
  }
}
