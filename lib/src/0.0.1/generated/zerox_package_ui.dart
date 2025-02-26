import 'package:flutter/material.dart';

import '../../../ui_generator_0_0_1.dart';

abstract class ZeroxPackageUIWidget extends StatefulWidget {
  const ZeroxPackageUIWidget({super.key});
}

abstract class ZeroxPackageUIState<T extends ZeroxPackageUIWidget>
    extends State<T> {
  // Data to be sent to the server
  Map<String, dynamic> getInputData();

  // Files to be sent to the server
  List<ZeroxFile> getFilesInfo();
}
