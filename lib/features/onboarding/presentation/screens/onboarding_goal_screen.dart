import '../../../../app/router/app_routes.dart';
import '../widgets/onboarding_step_scaffold.dart';

class OnboardingGoalScreen extends OnboardingStepScaffold {
  const OnboardingGoalScreen({super.key})
      : super(
          title: 'Objetivo principal',
          description:
              'Elegiremos recomendaciones iniciales según tu prioridad, sin hacer promesas médicas.',
          options: const [
            'Dormir mejor',
            'Tener más energía',
            'Perder grasa',
            'Ganar músculo',
            'Rendimiento deportivo',
            'Gestionar turnos',
          ],
          nextRoute: AppRoutes.onboardingChronotype,
        );
}
