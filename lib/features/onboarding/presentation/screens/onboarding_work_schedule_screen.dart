import '../../../../app/router/app_routes.dart';
import '../widgets/onboarding_step_scaffold.dart';

class OnboardingWorkScheduleScreen extends OnboardingStepScaffold {
  const OnboardingWorkScheduleScreen({super.key})
      : super(
          title: 'Rutina laboral',
          description:
              'La app debe funcionar para rutina diurna, turnos rotativos y turnos de noche.',
          options: const [
            'Diurna',
            'Nocturna',
            'Rotativa',
            'Flexible',
          ],
          nextRoute: AppRoutes.onboardingTraining,
        );
}
