import 'dart:ffi';
import 'package:shared_preferences/shared_preferences.dart';

class UserDefaults {
  static late SharedPreferences _preferences;

  static Future<SharedPreferences> load() async {
    _preferences = await SharedPreferences.getInstance();
    return _preferences;
  }

  static const _isArabic = 'isArabic';

  static Future isArabic(bool isArabic) async =>
      await _preferences.setBool(_isArabic, isArabic);

  static bool isLanguageArabic() => _preferences.getBool(_isArabic) ?? false;
}
