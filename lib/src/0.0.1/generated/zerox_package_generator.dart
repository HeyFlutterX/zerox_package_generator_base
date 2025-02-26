import 'dart:io';

import '../ai/ai.dart';
import '../interfaces/selenium.dart';

abstract class ZeroXPackageGenerator {
  Future<void> generate(
    AI ai,
    Selenium selenium,
    Map<String, dynamic> data,
    Directory project,
  );
}
