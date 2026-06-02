import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Ajustes y privacidad', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Local-first: sueño, HRV, nutrición, salud y pantalla no se envían a backend ni analytics sin consentimiento explícito.',
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Próximamente: exportar JSON/CSV, borrar todos los datos, gestionar consentimientos granulares y backup cifrado.',
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Integraciones preparadas: HealthKit, Health Connect, Oura, Whoop, Garmin y Screen Time con fallback manual.',
            ),
          ),
        ),
      ],
    );
  }
}
