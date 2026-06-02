class AuthUser {
  const AuthUser({
    required this.id,
    required this.email,
    required this.hasCloudBackupConsent,
  });

  final String id;
  final String? email;
  final bool hasCloudBackupConsent;
}

abstract interface class AuthRepository {
  Future<AuthUser?> currentUser();

  Future<void> signOut();
}
