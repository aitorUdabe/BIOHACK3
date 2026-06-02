import '../../domain/entities/daily_biometrics.dart';

class DailyBiometricsModel extends DailyBiometrics {
  const DailyBiometricsModel({
    required super.id,
    required super.userId,
    required super.date,
    required super.createdAt,
    super.hrvAverage,
    super.restingHeartRate,
    super.basalTemperatureDeviation,
    super.totalSteps,
    super.estimatedNeatKcal,
    super.subjectiveEnergyScore,
    super.subjectiveStressScore,
  });

  factory DailyBiometricsModel.fromJson(Map<String, Object?> json) {
    return DailyBiometricsModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      date: DateTime.parse(json['date']! as String),
      hrvAverage: (json['hrvAverage'] as num?)?.toDouble(),
      restingHeartRate: json['restingHeartRate'] as int?,
      basalTemperatureDeviation:
          (json['basalTemperatureDeviation'] as num?)?.toDouble(),
      totalSteps: json['totalSteps'] as int?,
      estimatedNeatKcal: json['estimatedNeatKcal'] as int?,
      subjectiveEnergyScore: json['subjectiveEnergyScore'] as int?,
      subjectiveStressScore: json['subjectiveStressScore'] as int?,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String(),
      'hrvAverage': hrvAverage,
      'restingHeartRate': restingHeartRate,
      'basalTemperatureDeviation': basalTemperatureDeviation,
      'totalSteps': totalSteps,
      'estimatedNeatKcal': estimatedNeatKcal,
      'subjectiveEnergyScore': subjectiveEnergyScore,
      'subjectiveStressScore': subjectiveStressScore,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
