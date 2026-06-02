import 'dart:io';

import 'package:flutter/services.dart';

class AndroidHealthConnectChannel {
  const AndroidHealthConnectChannel({
    MethodChannel channel = const MethodChannel('anti_gravity/health_connect'),
  }) : _channel = channel;

  final MethodChannel _channel;

  Future<bool> requestPermissions() async {
    if (!Platform.isAndroid) {
      return false;
    }
    final granted = await _channel.invokeMethod<bool>('requestPermissions');
    return granted ?? false;
  }
}
