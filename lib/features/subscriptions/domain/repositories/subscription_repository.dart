enum SubscriptionStatus { free, trial, pro, expired }

abstract interface class SubscriptionRepository {
  Future<SubscriptionStatus> getStatus();

  Future<void> restorePurchases();
}
