import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fcm_customizer/fcm_customizer_method_channel.dart';

void main() {
  MethodChannelFcmCustomizer platform = MethodChannelFcmCustomizer();
  const MethodChannel channel = MethodChannel('fcm_customizer');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
