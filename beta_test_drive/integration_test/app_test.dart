import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../test/widget_test.dart' as tests;

Future<void> main() async {
  print(Platform.environment['PROCESSOR_ARCHITECTURE']);
  await tests.main();
}
