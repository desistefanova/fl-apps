import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  print("Current PID $pid");

  group('Realm tests', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      await driver!.close();
    });

    test('run all', () async {
      String result = await driver!.requestData("test", timeout: const Duration(minutes: 30));
      if (result.isNotEmpty) {
        fail("Failed tests: \n $result");
      }
    }, timeout: const Timeout(Duration(minutes: 30)));
  });
}
