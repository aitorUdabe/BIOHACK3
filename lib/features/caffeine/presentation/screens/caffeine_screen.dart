import '../../../../shared/widgets/placeholder_feature_screen.dart';

class CaffeineScreen extends PlaceholderFeatureScreen {
  const CaffeineScreen({super.key})
      : super(
          title: 'Cafeína',
          description:
              'Registro manual inicial de café, té, energéticos y pre-entrenos.',
          actions: const [
            'Calcular hora límite como 8 horas antes de dormir.',
            'Detectar pre-entreno estimulante nocturno.',
            'Aprender sensibilidad individual antes de endurecer recomendaciones.',
          ],
        );
}
