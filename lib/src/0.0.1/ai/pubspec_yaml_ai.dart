import 'dart:io';

abstract class PubspecYamlAI {
  final Directory project;

  const PubspecYamlAI(this.project);

  /// Installs the specified package.
  ///
  /// This method attempts to install a package with the given [packageName]
  /// inside the pubspec.yaml file.
  ///
  /// Returns
  /// - `true` if the package was successfully installed
  /// - `false` if the installation failed.
  ///
  /// Example usage:
  /// ```dart
  /// bool success = await installPackage('http');
  /// if (success) {
  ///   print('Package installed successfully.');
  /// } else {
  ///   print('Failed to install package.');
  /// }
  /// ```
  ///
  /// [packageName]: The name of the package to be installed.
  Future<bool> installPackage(String packageName);

  /// Loads the `pubspec.yaml` file and returns its contents as a map.
  ///
  /// This method reads the `pubspec.yaml` file, which contains metadata
  /// about the Dart project, such as dependencies, version, and other
  /// configuration details. The contents of the file are parsed and
  /// returned as a `Map<String, String>`, where the keys are the
  /// configuration fields and the values are their corresponding values.
  ///
  /// Returns a `Future` that completes with a `Map<String, String>` containing
  /// the parsed contents of the `pubspec.yaml` file.
  Future<Map<String, String>> loadPubspecYaml();

  /// Retrieves the SDK constraints from the pubspec.yaml file.
  ///
  /// This method attempts to extract the SDK constraints specified in the
  /// pubspec.yaml file of the project. SDK constraints define the range of
  /// Dart SDK versions that the project is compatible with.
  ///
  /// Returns:
  /// - A [String] containing the SDK constraints if found.
  /// - `null` if no SDK constraints were found in the pubspec.yaml file.
  ///
  /// Example:
  /// ```dart
  /// String? sdkConstraints = await getSDKConstraints();
  /// if (sdkConstraints != null) {
  ///   print('SDK Constraints: $sdkConstraints');
  /// } else {
  ///   print('No SDK constraints found.');
  /// }
  /// ```
  Future<String?> getSDKConstraints();

  /// Checks if a given package is compatible.
  ///
  /// This method takes the name of a package and determines whether it is
  /// compatible with the current project setup. It performs necessary checks
  /// and returns a boolean value indicating the compatibility status.
  ///
  /// [packageName] The name of the package to check for compatibility.
  ///
  /// Returns a [Future] that completes with `true` if the package is compatible,
  /// otherwise `false`.
  Future<bool> isPackageCompatible(String packageName);
}
