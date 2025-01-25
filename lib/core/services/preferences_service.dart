import 'package:shared_preferences/shared_preferences.dart';

/// Service class to handle saving and retrieving data from SharedPreferences
class PreferencesService {
  Future<void> savePreference(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> getPreference(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
