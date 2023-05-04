import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fcm_customizer_method_channel.dart';

abstract class FcmCustomizerPlatform extends PlatformInterface {
  /// Constructs a FcmCustomizerPlatform.
  FcmCustomizerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FcmCustomizerPlatform _instance = MethodChannelFcmCustomizer();

  /// The default instance of [FcmCustomizerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFcmCustomizer].
  static FcmCustomizerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FcmCustomizerPlatform] when
  /// they register themselves.
  static set instance(FcmCustomizerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
