import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/caffeine/presentation/screens/caffeine_screen.dart';
import '../../features/circadian_score/presentation/screens/circadian_score_screen.dart';
import '../../features/daily_plan/presentation/screens/daily_plan_screen.dart';
import '../../features/light_tracking/presentation/screens/light_tracking_screen.dart';
import '../../features/nutrition/presentation/screens/nutrition_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_chronotype_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_goal_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_permissions_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_training_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_welcome_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_work_schedule_screen.dart';
import '../../features/screen_usage/presentation/screens/screen_usage_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/sleep/presentation/screens/sleep_screen.dart';
import '../../features/stress/presentation/screens/stress_screen.dart';
import '../../features/training/presentation/screens/training_screen.dart';
import '../../shared/widgets/quick_log_screen.dart';
import '../widgets/app_shell.dart';
import 'app_routes.dart';
import '../../features/home/presentation/screens/home_dashboard_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingWelcome,
        builder: (context, state) => const OnboardingWelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingGoal,
        builder: (context, state) => const OnboardingGoalScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingChronotype,
        builder: (context, state) => const OnboardingChronotypeScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingWorkSchedule,
        builder: (context, state) => const OnboardingWorkScheduleScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingTraining,
        builder: (context, state) => const OnboardingTrainingScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingPermissions,
        builder: (context, state) => const OnboardingPermissionsScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomeDashboardScreen(),
          ),
          GoRoute(
            path: AppRoutes.plan,
            builder: (context, state) => const DailyPlanScreen(),
          ),
          GoRoute(
            path: AppRoutes.quickLog,
            builder: (context, state) => const QuickLogScreen(),
          ),
          GoRoute(
            path: AppRoutes.insights,
            builder: (context, state) => const CircadianScoreScreen(),
          ),
          GoRoute(
            path: AppRoutes.settings,
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: AppRoutes.circadianScore,
            builder: (context, state) => const CircadianScoreScreen(),
          ),
          GoRoute(
            path: AppRoutes.lightTracking,
            builder: (context, state) => const LightTrackingScreen(),
          ),
          GoRoute(
            path: AppRoutes.nutrition,
            builder: (context, state) => const NutritionScreen(),
          ),
          GoRoute(
            path: AppRoutes.sleep,
            builder: (context, state) => const SleepScreen(),
          ),
          GoRoute(
            path: AppRoutes.training,
            builder: (context, state) => const TrainingScreen(),
          ),
          GoRoute(
            path: AppRoutes.screenUsage,
            builder: (context, state) => const ScreenUsageScreen(),
          ),
          GoRoute(
            path: AppRoutes.caffeine,
            builder: (context, state) => const CaffeineScreen(),
          ),
          GoRoute(
            path: AppRoutes.stress,
            builder: (context, state) => const StressScreen(),
          ),
        ],
      ),
    ],
  );
});
