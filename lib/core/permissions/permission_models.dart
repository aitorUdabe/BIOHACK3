enum ConsentCategory {
  health,
  location,
  notifications,
  screenUsage,
  analytics,
  cloudBackup,
}

enum PermissionStatusValue {
  granted,
  denied,
  unavailable,
  notDetermined,
}

class PermissionRequestResult {
  const PermissionRequestResult({
    required this.category,
    required this.status,
    required this.explanation,
  });

  final ConsentCategory category;
  final PermissionStatusValue status;
  final String explanation;

  bool get isGranted => status == PermissionStatusValue.granted;
}
