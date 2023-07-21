import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'basic_plugin_example_method_channel.dart';

abstract class BasicPluginExamplePlatform extends PlatformInterface {
  /// Constructs a BasicPluginExamplePlatform.
  BasicPluginExamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static BasicPluginExamplePlatform _instance = MethodChannelBasicPluginExample();

  /// The default instance of [BasicPluginExamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelBasicPluginExample].
  static BasicPluginExamplePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BasicPluginExamplePlatform] when
  /// they register themselves.
  static set instance(BasicPluginExamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
