import '../../../../core/utils/clock_time.dart';

class ShiftWorkPlan {
  const ShiftWorkPlan({
    required this.isNightShiftMode,
    required this.biologicalMorningStart,
    required this.lightAtWakeRecommendation,
    required this.lightBeforeSleepRecommendation,
    required this.mealTimingRecommendation,
    required this.caffeineRecommendation,
    required this.trainingRecommendation,
  });

  final bool isNightShiftMode;
  final ClockTime biologicalMorningStart;
  final String lightAtWakeRecommendation;
  final String lightBeforeSleepRecommendation;
  final String mealTimingRecommendation;
  final String caffeineRecommendation;
  final String trainingRecommendation;
}
