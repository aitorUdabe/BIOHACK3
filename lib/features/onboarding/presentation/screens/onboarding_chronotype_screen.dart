import '../../../../app/router/app_routes.dart';
import '../widgets/onboarding_step_scaffold.dart';

class OnboardingChronotypeScreen extends OnboardingStepScaffold {
  const OnboardingChronotypeScreen({super.key})
      : super(
          title: 'Cronotipo base',
          description:
              'Esto ajusta ventanas de luz, cafeína y sueño. Podrá recalibrarse con datos reales.',
          options: const [
            'Matutino',
            'Intermedio',
            'Vespertino',
            'No lo sé todavía',
          ],
          nextRoute: AppRoutes.onboardingWorkSchedule,
        );
}
