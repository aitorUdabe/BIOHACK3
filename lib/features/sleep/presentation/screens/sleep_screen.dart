import '../../../../shared/widgets/placeholder_feature_screen.dart';

class SleepScreen extends PlaceholderFeatureScreen {
  const SleepScreen({super.key})
      : super(
          title: 'Sueño',
          description:
              'Fallback manual para usuarios sin wearable y base para HealthKit/Health Connect.',
          actions: const [
            'Registrar hora de dormir y despertar.',
            'Añadir eficiencia o calidad subjetiva.',
            'Marcar despertares y sueño profundo si existe wearable.',
          ],
        );
}
