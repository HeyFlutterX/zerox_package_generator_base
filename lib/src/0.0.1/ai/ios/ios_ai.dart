import 'dart:io';

abstract class IOSAI {
  final Directory project;

  const IOSAI(this.project);

  Future<String?> getBundleId();
}
