import 'dart:convert';
import 'dart:typed_data';

class ZeroxFile {
  final String fileName;
  final Uint8List fileBytes;

  ZeroxFile({required this.fileName, required this.fileBytes});

  Map<String, dynamic> toJson() {
    return {'fileName': fileName, 'fileBytes': base64Encode(fileBytes)};
  }
}
