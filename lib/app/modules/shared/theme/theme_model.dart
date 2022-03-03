//theme_model.dart 
import 'package:flutter/material.dart';
import 'package:flutter_template/app/modules/shared/theme/theme_preferences.dart';
class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreference _preferences = ThemePreference();
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreference();
    getPreferences();
  }
//Switching themes in the flutter apps - Flutterant
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}
//Switching themes in the flutter apps - Flutterant