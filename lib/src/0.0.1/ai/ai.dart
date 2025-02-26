import 'dart:io';

import '../interfaces/ai_api.dart';
import '../interfaces/io.dart';

typedef AIPrompt = String Function(String fileContent);

abstract class AI {
  final IO io;
  final AIApi ai;

  const AI(this.io, this.ai);

  /// Modifies Dart files based on the provided parameters inside the target project.
  ///
  /// This function performs modifications on Dart files. The specific
  /// modifications and the files to be modified are determined by the
  /// [aiPrompt] parameter.
  ///
  /// The function is asynchronous and returns a [Future] that completes
  /// when the modifications are done.
  Future<void> modifyDartFiles({
    required Directory project,
    required AIPrompt aiPrompt,
  });
}
