
import 'basic_plugin_example_platform_interface.dart';

class BasicPluginExample {
  Future<String?> getPlatformVersion() {
    return BasicPluginExamplePlatform.instance.getPlatformVersion();
  }
}
