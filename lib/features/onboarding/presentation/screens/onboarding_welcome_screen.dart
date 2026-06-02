import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

class OnboardingWelcomeScreen extends StatelessWidget {
  const OnboardingWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tu protocolo diario, no otro tracker genérico.',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              const Text(
                'Anti-Gravity aprende cómo respondes a luz, comida, sueño, entrenamiento, móvil y turnos. Puedes usarla sin wearable.',
              ),
              const Spacer(),
              FilledButton(
                onPressed: () => context.go(AppRoutes.onboardingGoal),
                child: const Text('Configurar mi base'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
