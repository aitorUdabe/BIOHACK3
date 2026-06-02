import '../../../../shared/widgets/placeholder_feature_screen.dart';

class ScreenUsageScreen extends PlaceholderFeatureScreen {
  const ScreenUsageScreen({super.key})
      : super(
          title: 'Uso del móvil',
          description:
              'Preparado para DeviceActivity/Screen Time en iOS y UsageStatsManager en Android, con fallback manual.',
          actions: const [
            'Registrar minutos de móvil en las 2 horas antes del sueño.',
            'Marcar última interacción antes de dormir.',
            'Recomendaciones: brillo bajo, modo noche, luz cálida y rutina sin pantalla.',
          ],
        );
}
