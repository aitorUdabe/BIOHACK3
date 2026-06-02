import '../../../../shared/widgets/placeholder_feature_screen.dart';

class TrainingScreen extends PlaceholderFeatureScreen {
  const TrainingScreen({super.key})
      : super(
          title: 'Entrenamiento',
          description:
              'Registra hora, intensidad y tipo. Si es nocturno se activa protocolo realista.',
          actions: const [
            'Entreno después de las 20:00 o dentro de 3 horas antes de dormir = nocturno.',
            'No se prohíbe entrenar tarde: se adapta cena, luz y relajación.',
            'Registrar RPE para aprender impacto en recuperación.',
          ],
        );
}
