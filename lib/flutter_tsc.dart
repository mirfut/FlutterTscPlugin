
import 'flutter_tsc_platform_interface.dart';

class FlutterTsc {
  Future<String?> getPlatformVersion() {
    return FlutterTscPlatform.instance.getPlatformVersion();
  }
}
