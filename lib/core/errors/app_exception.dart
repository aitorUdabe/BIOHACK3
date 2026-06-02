sealed class AppException implements Exception {
  const AppException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppException($message)';
}

class PermissionDeniedException extends AppException {
  const PermissionDeniedException(super.message, {super.cause});
}

class LocalDatabaseException extends AppException {
  const LocalDatabaseException(super.message, {super.cause});
}

class HealthIntegrationException extends AppException {
  const HealthIntegrationException(super.message, {super.cause});
}
