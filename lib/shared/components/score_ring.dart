import 'package:flutter/material.dart';

class ScoreRing extends StatelessWidget {
  const ScoreRing({
    required this.score,
    required this.label,
    super.key,
  });

  final double score;
  final String label;

  @override
  Widget build(BuildContext context) {
    final normalized = (score / 100).clamp(0.0, 1.0);
    return SizedBox(
      width: 132,
      height: 132,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: normalized,
            strokeWidth: 12,
            backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                score.round().toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(label),
            ],
          ),
        ],
      ),
    );
  }
}
