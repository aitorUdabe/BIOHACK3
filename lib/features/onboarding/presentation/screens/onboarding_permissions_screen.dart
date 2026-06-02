import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../health_integrations/presentation/controllers/health_permissions_controller.dart';

class OnboardingPermissionsScreen extends ConsumerWidget {
  const OnboardingPermissionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final permissions = ref.watch(healthPermissionsProvider);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(
              'Permisos y consentimiento',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            const Text(
              'Puedes usar la app en modo manual. Salud, pantalla, ubicación, backup y analytics se separan por consentimiento.',
            ),
            const SizedBox(height: 24),
            permissions.when(
              data: (snapshot) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    snapshot.usesManualFallback
                        ? 'Modo inicial: fallback manual activo. HealthKit/Health Connect quedan preparados.'
                        : 'Permisos de salud disponibles.',
                  ),
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Text('No se pudo consultar permisos: $error'),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => context.go(AppRoutes.home),
              child: const Text('Entrar en Anti-Gravity'),
            ),
          ],
        ),
      ),
    );
  }
}
