import 'package:flutter_test/flutter_test.dart';
import 'package:basic_plugin_example/basic_plugin_example.dart';
import 'package:basic_plugin_example/basic_plugin_example_platform_interface.dart';
import 'package:basic_plugin_example/basic_plugin_example_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBasicPluginExamplePlatform
    with MockPlatformInterfaceMixin
    implements BasicPluginExamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BasicPluginExamplePlatform initialPlatform = BasicPluginExamplePlatform.instance;

  test('$MethodChannelBasicPluginExample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBasicPluginExample>());
  });

  test('getPlatformVersion', () async {
    BasicPluginExample basicPluginExamplePlugin = BasicPluginExample();
    MockBasicPluginExamplePlatform fakePlatform = MockBasicPluginExamplePlatform();
    BasicPluginExamplePlatform.instance = fakePlatform;

    expect(await basicPluginExamplePlugin.getPlatformVersion(), '42');
  });
}
