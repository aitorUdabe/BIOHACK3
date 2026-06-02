import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/router/app_routes.dart';
import 'action_card.dart';

class QuickLogScreen extends StatelessWidget {
  const QuickLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      ('Registrar comida', 'Cena, snack, macros y saciedad.', Icons.restaurant, AppRoutes.nutrition),
      ('Registrar exposición solar', 'Amanecer, luz natural y lux estimados.', Icons.wb_sunny_outlined, AppRoutes.lightTracking),
      ('Registrar sueño manual', 'Horario, duración y eficiencia percibida.', Icons.bedtime_outlined, AppRoutes.sleep),
      ('Registrar entrenamiento', 'Hora, intensidad y protocolo nocturno.', Icons.fitness_center, AppRoutes.training),
      ('Registrar cafeína', 'Café, té, pre-entreno y hora límite.', Icons.coffee_outlined, AppRoutes.caffeine),
      ('Registrar energía/estrés', 'Check-in subjetivo rápido.', Icons.self_improvement, AppRoutes.stress),
      ('Registrar uso de pantalla', 'Fallback manual para móvil nocturno.', Icons.phone_iphone, AppRoutes.screenUsage),
    ];

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Registrar', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 12),
        const Text('Accesos rápidos manual-first. Luego se conectarán permisos nativos.'),
        const SizedBox(height: 24),
        ...actions.map(
          (action) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ActionCard(
              title: action.$1,
              subtitle: action.$2,
              icon: action.$3,
              onTap: () => context.go(action.$4),
            ),
          ),
        ),
      ],
    );
  }
}
