abstract interface class PrivacyService {
  Future<void> deleteAllLocalData();

  Future<Map<String, Object?>> buildJsonExportPreview();
}
