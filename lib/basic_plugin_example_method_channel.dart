import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'basic_plugin_example_platform_interface.dart';

/// An implementation of [BasicPluginExamplePlatform] that uses method channels.
class MethodChannelBasicPluginExample extends BasicPluginExamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('basic_plugin_example');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
