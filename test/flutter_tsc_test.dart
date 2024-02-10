import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tsc/flutter_tsc.dart';
import 'package:flutter_tsc/flutter_tsc_platform_interface.dart';
import 'package:flutter_tsc/flutter_tsc_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterTscPlatform
    with MockPlatformInterfaceMixin
    implements FlutterTscPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterTscPlatform initialPlatform = FlutterTscPlatform.instance;

  test('$MethodChannelFlutterTsc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterTsc>());
  });

  test('getPlatformVersion', () async {
    FlutterTsc flutterTscPlugin = FlutterTsc();
    MockFlutterTscPlatform fakePlatform = MockFlutterTscPlatform();
    FlutterTscPlatform.instance = fakePlatform;

    expect(await flutterTscPlugin.getPlatformVersion(), '42');
  });
}
