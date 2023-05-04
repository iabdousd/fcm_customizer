import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fcm_customizer_platform_interface.dart';

/// An implementation of [FcmCustomizerPlatform] that uses method channels.
class MethodChannelFcmCustomizer extends FcmCustomizerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fcm_customizer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
