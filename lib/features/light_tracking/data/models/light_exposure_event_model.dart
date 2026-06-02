import '../../domain/entities/light_exposure_event.dart';

class LightExposureEventModel extends LightExposureEvent {
  const LightExposureEventModel({
    required super.id,
    required super.userId,
    required super.startAt,
    required super.endAt,
    required super.lightType,
    required super.estimatedLux,
    required super.source,
    required super.isMorningSunlight,
    required super.isSunriseViewed,
    required super.createdAt,
    super.uvIndex,
  });

  factory LightExposureEventModel.fromJson(Map<String, Object?> json) {
    return LightExposureEventModel(
      id: json['id']! as String,
      userId: json['userId']! as String,
      startAt: DateTime.parse(json['startAt']! as String),
      endAt: DateTime.parse(json['endAt']! as String),
      lightType: LightType.values.byName(json['lightType']! as String),
      estimatedLux: json['estimatedLux']! as int,
      uvIndex: (json['uvIndex'] as num?)?.toDouble(),
      source: DataSource.values.byName(json['source']! as String),
      isMorningSunlight: json['isMorningSunlight']! as bool,
      isSunriseViewed: json['isSunriseViewed']! as bool,
      createdAt: DateTime.parse(json['createdAt']! as String),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'userId': userId,
      'startAt': startAt.toIso8601String(),
      'endAt': endAt.toIso8601String(),
      'lightType': lightType.name,
      'estimatedLux': estimatedLux,
      'uvIndex': uvIndex,
      'source': source.name,
      'isMorningSunlight': isMorningSunlight,
      'isSunriseViewed': isSunriseViewed,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
