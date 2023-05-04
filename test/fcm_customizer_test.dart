import 'package:flutter_test/flutter_test.dart';
import 'package:fcm_customizer/fcm_customizer.dart';
import 'package:fcm_customizer/fcm_customizer_platform_interface.dart';
import 'package:fcm_customizer/fcm_customizer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFcmCustomizerPlatform
    with MockPlatformInterfaceMixin
    implements FcmCustomizerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FcmCustomizerPlatform initialPlatform = FcmCustomizerPlatform.instance;

  test('$MethodChannelFcmCustomizer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFcmCustomizer>());
  });

  test('getPlatformVersion', () async {
    FcmCustomizer fcmCustomizerPlugin = FcmCustomizer();
    MockFcmCustomizerPlatform fakePlatform = MockFcmCustomizerPlatform();
    FcmCustomizerPlatform.instance = fakePlatform;

    expect(await fcmCustomizerPlugin.getPlatformVersion(), '42');
  });
}
