enum LightType {
  directSun,
  indirectSun,
  artificialBlue,
  artificialWarm,
  artificialRed,
  screen,
  unknown,
}

enum DataSource {
  manual,
  phoneSensor,
  weatherApi,
  wearable,
  healthKit,
  healthConnect,
  screenTime,
  inferred,
}

class LightExposureEvent {
  const LightExposureEvent({
    required this.id,
    required this.userId,
    required this.startAt,
    required this.endAt,
    required this.lightType,
    required this.estimatedLux,
    required this.source,
    required this.isMorningSunlight,
    required this.isSunriseViewed,
    required this.createdAt,
    this.uvIndex,
  });

  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final LightType lightType;
  final int estimatedLux;
  final double? uvIndex;
  final DataSource source;
  final bool isMorningSunlight;
  final bool isSunriseViewed;
  final DateTime createdAt;

  Duration get duration => endAt.difference(startAt);

  bool get isNaturalLight {
    return lightType == LightType.directSun || lightType == LightType.indirectSun;
  }
}
