import 'package:flutter/material.dart';
import 'package:zerox_package_generator_base/ui_generator_0_0_1.dart';

class PackageUI extends ZeroxPackageUIWidget {
  const PackageUI({super.key});

  @override
  ZeroxPackageUIState<PackageUI> createState() => _PackageUIState();
}

class _PackageUIState extends ZeroxPackageUIState<PackageUI> {
  @override
  Map<String, dynamic> getInputData() {
    return {};
  }

  @override
  List<ZeroxFile> getFilesInfo() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
