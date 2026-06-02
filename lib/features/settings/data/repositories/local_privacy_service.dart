import '../../../local_database/data/app_database.dart';
import '../../domain/usecases/privacy_service.dart';

class LocalPrivacyService implements PrivacyService {
  const LocalPrivacyService(this._database);

  final AppDatabase _database;

  @override
  Future<void> deleteAllLocalData() {
    return _database.deleteAllSensitiveData();
  }

  @override
  Future<Map<String, Object?>> buildJsonExportPreview() async {
    return {
      'format': 'anti-gravity-export-preview',
      'status': 'planned',
      'note':
          'La exportación JSON/CSV completa se implementará leyendo tablas locales sensibles bajo consentimiento explícito.',
      'sensitiveDataPolicy':
          'No se envían sueño, nutrición, HRV ni salud a analytics o backend sin permiso granular.',
    };
  }
}
