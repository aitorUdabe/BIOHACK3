import '../../../../core/utils/clock_time.dart';
import '../../domain/entities/user_profile.dart';

class UserProfileModel extends UserProfile {
  const UserProfileModel({
    required super.id,
    required super.name,
    required super.fitzpatrickSkinType,
    required super.baseChronotype,
    required super.workScheduleType,
    required super.isNightShiftWorker,
    required super.usualWakeTime,
    required super.usualSleepTime,
    required super.mainGoal,
    required super.trainingProfile,
    required super.createdAt,
    required super.updatedAt,
    super.birthDate,
    super.sex,
    super.heightCm,
    super.weightKg,
  });

  factory UserProfileModel.fromEntity(UserProfile entity) {
    return UserProfileModel(
      id: entity.id,
      name: entity.name,
      birthDate: entity.birthDate,
      sex: entity.sex,
      heightCm: entity.heightCm,
      weightKg: entity.weightKg,
      fitzpatrickSkinType: entity.fitzpatrickSkinType,
      baseChronotype: entity.baseChronotype,
      workScheduleType: entity.workScheduleType,
      isNightShiftWorker: entity.isNightShiftWorker,
      usualWakeTime: entity.usualWakeTime,
      usualSleepTime: entity.usualSleepTime,
      mainGoal: entity.mainGoal,
      trainingProfile: entity.trainingProfile,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory UserProfileModel.fromJson(Map<String, Object?> json) {
    return UserProfileModel(
      id: json['id']! as String,
      name: json['name']! as String,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate']! as String),
      sex: json['sex'] == null
          ? null
          : BiologicalSex.values.byName(json['sex']! as String),
      heightCm: (json['heightCm'] as num?)?.toDouble(),
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      fitzpatrickSkinType:
          FitzpatrickSkinType.values.byName(json['fitzpatrickSkinType']! as String),
      baseChronotype:
          Chronotype.values.byName(json['baseChronotype']! as String),
      workScheduleType:
          WorkScheduleType.values.byName(json['workScheduleType']! as String),
      isNightShiftWorker: json['isNightShiftWorker']! as bool,
      usualWakeTime: ClockTime.parse(json['usualWakeTime']! as String),
      usualSleepTime: ClockTime.parse(json['usualSleepTime']! as String),
      mainGoal: MainGoal.values.byName(json['mainGoal']! as String),
      trainingProfile:
          TrainingProfile.values.byName(json['trainingProfile']! as String),
      createdAt: DateTime.parse(json['createdAt']! as String),
      updatedAt: DateTime.parse(json['updatedAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'birthDate': birthDate?.toIso8601String(),
      'sex': sex?.name,
      'heightCm': heightCm,
      'weightKg': weightKg,
      'fitzpatrickSkinType': fitzpatrickSkinType.name,
      'baseChronotype': baseChronotype.name,
      'workScheduleType': workScheduleType.name,
      'isNightShiftWorker': isNightShiftWorker,
      'usualWakeTime': usualWakeTime.toString(),
      'usualSleepTime': usualSleepTime.toString(),
      'mainGoal': mainGoal.name,
      'trainingProfile': trainingProfile.name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
