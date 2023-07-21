import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:basic_plugin_example/basic_plugin_example_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelBasicPluginExample platform = MethodChannelBasicPluginExample();
  const MethodChannel channel = MethodChannel('basic_plugin_example');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
