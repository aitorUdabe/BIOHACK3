enum CaffeineSourceType {
  coffee,
  tea,
  matcha,
  energyDrink,
  preWorkout,
  supplement,
  other,
}

class CaffeineEvent {
  const CaffeineEvent({
    required this.id,
    required this.userId,
    required this.consumedAt,
    required this.caffeineMg,
    required this.sourceType,
    required this.isLateCaffeine,
    required this.createdAt,
  });

  final String id;
  final String userId;
  final DateTime consumedAt;
  final int caffeineMg;
  final CaffeineSourceType sourceType;
  final bool isLateCaffeine;
  final DateTime createdAt;
}
