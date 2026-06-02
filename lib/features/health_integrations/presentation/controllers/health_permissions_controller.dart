import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/mock_health_data_repository.dart';
import '../../domain/entities/health_permission_snapshot.dart';
import '../../domain/repositories/health_data_repository.dart';

final healthDataRepositoryProvider = Provider<HealthDataRepository>((ref) {
  return const MockHealthDataRepository();
});

final healthPermissionsProvider =
    FutureProvider<HealthPermissionSnapshot>((ref) async {
  return ref.watch(healthDataRepositoryProvider).requestPermissions();
});
