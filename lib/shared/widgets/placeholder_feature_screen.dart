import 'package:flutter/material.dart';

class PlaceholderFeatureScreen extends StatelessWidget {
  const PlaceholderFeatureScreen({
    required this.title,
    required this.description,
    required this.actions,
    super.key,
  });

  final String title;
  final String description;
  final List<String> actions;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        Text(description),
        const SizedBox(height: 24),
        ...actions.map(
          (action) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(action),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
