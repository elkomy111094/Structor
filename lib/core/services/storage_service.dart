import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// Service class for handling file storage
class StorageService {
  Future<String> _getLocalPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<void> saveToLocalStorage(String fileName, String data) async {
    final path = await _getLocalPath();
    final file = File('$path/$fileName');
    await file.writeAsString(data);
  }

  Future<String> readFromLocalStorage(String fileName) async {
    final path = await _getLocalPath();
    final file = File('$path/$fileName');
    return await file.readAsString();
  }
}
