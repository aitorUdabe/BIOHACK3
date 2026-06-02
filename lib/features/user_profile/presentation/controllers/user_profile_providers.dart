import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/clock_time.dart';
import '../../domain/entities/user_profile.dart';

final localUserProfileProvider = Provider<UserProfile>((ref) {
  final now = DateTime.now();
  return UserProfile(
    id: AppConstants.defaultUserId,
    name: 'Aitor',
    fitzpatrickSkinType: FitzpatrickSkinType.type3,
    baseChronotype: Chronotype.intermediate,
    workScheduleType: WorkScheduleType.day,
    isNightShiftWorker: false,
    usualWakeTime: const ClockTime(hour: 7, minute: 0),
    usualSleepTime: const ClockTime(hour: 23, minute: 0),
    mainGoal: MainGoal.energy,
    trainingProfile: TrainingProfile.mixed,
    createdAt: now,
    updatedAt: now,
  );
});
