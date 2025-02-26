import 'dart:io';

abstract class AndroidAI {
  final Directory project;

  const AndroidAI(this.project);

  /// Retrieves the package name of the target project.
  ///
  /// Example usage:
  /// ```dart
  /// String? packageName = await getPackageName();
  /// if (packageName != null) {
  ///   print('Package name: $packageName');
  /// } else {
  ///   print('Failed to retrieve package name.');
  /// }
  /// ```
  ///
  /// Returns:
  /// - A [Future] that completes with the package name as a [String]
  /// - `null` if the package name could not be determined.
  Future<String?> getPackageName();
}
