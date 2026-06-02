import '../../../../shared/widgets/placeholder_feature_screen.dart';

class LightTrackingScreen extends PlaceholderFeatureScreen {
  const LightTrackingScreen({super.key})
      : super(
          title: 'Luz solar y artificial',
          description:
              'Registro manual inicial para amanecer, luz natural y luz artificial. Preparado para sensores y ubicación aproximada.',
          actions: const [
            'Botón rápido: he visto el amanecer.',
            'Registrar 15 minutos de luz natural tras despertar.',
            'Registrar luz artificial intensa por la noche.',
          ],
        );
}
