import '../../../../shared/widgets/placeholder_feature_screen.dart';

class StressScreen extends PlaceholderFeatureScreen {
  const StressScreen({super.key})
      : super(
          title: 'Energía y estrés',
          description:
              'Check-ins subjetivos para que la app funcione sin wearable y aprenda respuestas individuales.',
          actions: const [
            'Registrar energía de 1 a 5.',
            'Registrar estrés de 1 a 5.',
            'Sugerir respiración 4-6, paseo suave o movilidad si la recuperación baja.',
          ],
        );
}
