import '../../../../app/router/app_routes.dart';
import '../widgets/onboarding_step_scaffold.dart';

class OnboardingTrainingScreen extends OnboardingStepScaffold {
  const OnboardingTrainingScreen({super.key})
      : super(
          title: 'Entrenamiento',
          description:
              'Si entrenas tarde, Anti-Gravity adaptará cena, luz y recuperación en vez de castigarlo.',
          options: const [
            'No entreno ahora',
            'Fuerza / gimnasio',
            'Running / ciclismo',
            'CrossFit / Hyrox',
            'Entreno a menudo de noche',
          ],
          nextRoute: AppRoutes.onboardingPermissions,
        );
}
