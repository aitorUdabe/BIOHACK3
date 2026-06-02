import 'dart:io';

import 'package:flutter/services.dart';

class IosHealthKitChannel {
  const IosHealthKitChannel({
    MethodChannel channel = const MethodChannel('anti_gravity/healthkit'),
  }) : _channel = channel;

  final MethodChannel _channel;

  Future<bool> requestPermissions() async {
    if (!Platform.isIOS) {
      return false;
    }
    final granted = await _channel.invokeMethod<bool>('requestPermissions');
    return granted ?? false;
  }
}
