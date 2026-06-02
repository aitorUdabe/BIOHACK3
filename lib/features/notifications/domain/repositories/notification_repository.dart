abstract interface class NotificationRepository {
  Future<bool> requestPermissions();

  Future<void> scheduleMorningLightReminder(DateTime at);

  Future<void> scheduleCaffeineCutoffReminder(DateTime at);

  Future<void> scheduleEveningLightReminder(DateTime at);

  Future<void> cancelAll();
}
