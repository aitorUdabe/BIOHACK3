class DailyBiometrics {
  const DailyBiometrics({
    required this.id,
    required this.userId,
    required this.date,
    required this.createdAt,
    this.hrvAverage,
    this.restingHeartRate,
    this.basalTemperatureDeviation,
    this.totalSteps,
    this.estimatedNeatKcal,
    this.subjectiveEnergyScore,
    this.subjectiveStressScore,
  });

  final String id;
  final String userId;
  final DateTime date;
  final double? hrvAverage;
  final int? restingHeartRate;
  final double? basalTemperatureDeviation;
  final int? totalSteps;
  final int? estimatedNeatKcal;
  final int? subjectiveEnergyScore;
  final int? subjectiveStressScore;
  final DateTime createdAt;
}
