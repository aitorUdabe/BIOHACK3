import '../../../../core/utils/clock_time.dart';
import '../../../sleep/domain/entities/sleep_record.dart';
import '../../../user_profile/domain/entities/user_profile.dart';
import '../entities/shift_work_plan.dart';

class ShiftWorkService {
  const ShiftWorkService();

  bool shouldSuggestNightShiftMode(List<SleepRecord> recentSleep) {
    if (recentSleep.length < 3) {
      return false;
    }
    final lastThree = recentSleep.take(3);
    return lastThree.every((record) => record.sleepStart.hour >= 7);
  }

  ShiftWorkPlan generatePlan(UserProfile user) {
    final isNightMode = user.isNightShiftWorker ||
        user.workScheduleType == WorkScheduleType.night ||
        user.workScheduleType == WorkScheduleType.rotating;
    final wake = user.usualWakeTime;
    final sleep = user.usualSleepTime;

    if (!isNightMode) {
      return ShiftWorkPlan(
        isNightShiftMode: false,
        biologicalMorningStart: wake,
        lightAtWakeRecommendation:
            'Usa luz natural en los primeros 60 minutos tras despertar.',
        lightBeforeSleepRecommendation:
            'Reduce luz intensa y pantallas durante la última hora antes de dormir.',
        mealTimingRecommendation:
            'Termina la última comida 2-3 horas antes de dormir cuando sea posible.',
        caffeineRecommendation:
            'Corta cafeína unas 8 horas antes de tu hora habitual de sueño.',
        trainingRecommendation:
            'Entrena cuando puedas sostener constancia y recuperación.',
      );
    }

    return ShiftWorkPlan(
      isNightShiftMode: true,
      biologicalMorningStart: wake,
      lightAtWakeRecommendation:
          'Al despertar a las $wake, crea tu mañana biológica con luz intensa o natural.',
      lightBeforeSleepRecommendation:
          'Antes de dormir a las $sleep, reduce luz intensa aunque sea de día; usa oscuridad, antifaz o gafas de sol.',
      mealTimingRecommendation:
          'Prioriza comidas principales antes del turno y opciones ligeras si necesitas comer de madrugada.',
      caffeineRecommendation:
          'Ajusta la cafeína a tu sueño real: evita estimulantes desde ${sleep.add(const Duration(hours: -8))}.',
      trainingRecommendation:
          'Si entrenas tras el turno, baja intensidad; si entrenas al despertar, usa luz y comida fácil de digerir.',
    );
  }

  DateTime shiftWindowToBiologicalDay({
    required DateTime date,
    required ClockTime biologicalWakeTime,
  }) {
    return biologicalWakeTime.onDate(date);
  }
}
