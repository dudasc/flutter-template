// ignore_for_file: invalid_use_of_visible_for_testing_member, import_of_legacy_library_into_null_safe, non_constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static String DARK_THEME = "darkTheme";

  ThemePreference() {
    Map<String, Object> values = <String, Object>{'darkTheme': true};
    SharedPreferences.setMockInitialValues(values);
  }

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setBool(DARK_THEME, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    return sharedPreferences.getBool(DARK_THEME) ?? false;
  }
}
