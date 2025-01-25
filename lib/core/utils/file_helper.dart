import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// Utility class for file operations.
class FileHelper {
  Future<String> getFilePath(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/$fileName';
  }

  Future<void> writeFile(String fileName, String content) async {
    final path = await getFilePath(fileName);
    final file = File(path);
    await file.writeAsString(content);
  }

  Future<String> readFile(String fileName) async {
    final path = await getFilePath(fileName);
    final file = File(path);
    return await file.readAsString();
  }

  Future<void> deleteFile(String fileName) async {
    final path = await getFilePath(fileName);
    final file = File(path);
    await file.delete();
  }
}
