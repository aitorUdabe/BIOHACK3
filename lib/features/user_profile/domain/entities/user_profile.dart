import '../../../../core/utils/clock_time.dart';

enum BiologicalSex { male, female, other, preferNotToSay }

enum FitzpatrickSkinType { type1, type2, type3, type4, type5, type6 }

enum Chronotype { morning, intermediate, evening, unknown }

enum WorkScheduleType { day, night, rotating, flexible }

enum MainGoal {
  energy,
  sleep,
  fatLoss,
  muscleGain,
  performance,
  generalHealth,
  stress,
  shiftWork,
}

enum TrainingProfile {
  sedentary,
  recreational,
  strength,
  endurance,
  mixed,
  competitive,
}

class UserProfile {
  const UserProfile({
    required this.id,
    required this.name,
    required this.fitzpatrickSkinType,
    required this.baseChronotype,
    required this.workScheduleType,
    required this.isNightShiftWorker,
    required this.usualWakeTime,
    required this.usualSleepTime,
    required this.mainGoal,
    required this.trainingProfile,
    required this.createdAt,
    required this.updatedAt,
    this.birthDate,
    this.sex,
    this.heightCm,
    this.weightKg,
  });

  final String id;
  final String name;
  final DateTime? birthDate;
  final BiologicalSex? sex;
  final double? heightCm;
  final double? weightKg;
  final FitzpatrickSkinType fitzpatrickSkinType;
  final Chronotype baseChronotype;
  final WorkScheduleType workScheduleType;
  final bool isNightShiftWorker;
  final ClockTime usualWakeTime;
  final ClockTime usualSleepTime;
  final MainGoal mainGoal;
  final TrainingProfile trainingProfile;
  final DateTime createdAt;
  final DateTime updatedAt;

  bool get trainsSeriously {
    return switch (trainingProfile) {
      TrainingProfile.strength ||
      TrainingProfile.endurance ||
      TrainingProfile.mixed ||
      TrainingProfile.competitive =>
        true,
      _ => false,
    };
  }

  UserProfile copyWith({
    String? id,
    String? name,
    DateTime? birthDate,
    BiologicalSex? sex,
    double? heightCm,
    double? weightKg,
    FitzpatrickSkinType? fitzpatrickSkinType,
    Chronotype? baseChronotype,
    WorkScheduleType? workScheduleType,
    bool? isNightShiftWorker,
    ClockTime? usualWakeTime,
    ClockTime? usualSleepTime,
    MainGoal? mainGoal,
    TrainingProfile? trainingProfile,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      sex: sex ?? this.sex,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      fitzpatrickSkinType: fitzpatrickSkinType ?? this.fitzpatrickSkinType,
      baseChronotype: baseChronotype ?? this.baseChronotype,
      workScheduleType: workScheduleType ?? this.workScheduleType,
      isNightShiftWorker: isNightShiftWorker ?? this.isNightShiftWorker,
      usualWakeTime: usualWakeTime ?? this.usualWakeTime,
      usualSleepTime: usualSleepTime ?? this.usualSleepTime,
      mainGoal: mainGoal ?? this.mainGoal,
      trainingProfile: trainingProfile ?? this.trainingProfile,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
