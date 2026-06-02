import '../../../../core/permissions/permission_models.dart';

class HealthPermissionSnapshot {
  const HealthPermissionSnapshot({
    required this.healthStatus,
    required this.stepsStatus,
    required this.sleepStatus,
    required this.workoutStatus,
    required this.usesManualFallback,
  });

  final PermissionStatusValue healthStatus;
  final PermissionStatusValue stepsStatus;
  final PermissionStatusValue sleepStatus;
  final PermissionStatusValue workoutStatus;
  final bool usesManualFallback;
}
