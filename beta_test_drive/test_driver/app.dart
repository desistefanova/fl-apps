import 'package:flutter_driver/driver_extension.dart';
import '../test/widget_test.dart' as tests;

void main(List<String> args) async {
  enableFlutterDriverExtension(handler: (command) async {
    tests.main();
    return "";
  });
}
