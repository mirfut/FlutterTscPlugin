import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_tsc_method_channel.dart';

abstract class FlutterTscPlatform extends PlatformInterface {
  /// Constructs a FlutterTscPlatform.
  FlutterTscPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTscPlatform _instance = MethodChannelFlutterTsc();

  /// The default instance of [FlutterTscPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTsc].
  static FlutterTscPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTscPlatform] when
  /// they register themselves.
  static set instance(FlutterTscPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
