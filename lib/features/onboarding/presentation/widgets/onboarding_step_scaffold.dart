import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingStepScaffold extends StatelessWidget {
  const OnboardingStepScaffold({
    required this.title,
    required this.description,
    required this.options,
    required this.nextRoute,
    super.key,
  });

  final String title;
  final String description;
  final List<String> options;
  final String nextRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            Text(description),
            const SizedBox(height: 24),
            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(option),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => context.go(nextRoute),
              child: const Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
