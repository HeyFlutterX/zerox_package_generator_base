import 'dart:io';

abstract class IO {
  List<File> loadDartFiles(String projectPath);

  Future<void> writeFile(File file, String contents);
}
