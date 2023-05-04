
import 'fcm_customizer_platform_interface.dart';

class FcmCustomizer {
  Future<String?> getPlatformVersion() {
    return FcmCustomizerPlatform.instance.getPlatformVersion();
  }
}
