import 'package:firebase3withflutter220710/services/dark_theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemePreferences darkThemePreferences = ThemePreferences();
  bool _dartTheme = false;
  bool get getDarkTheme => _dartTheme;

  set setDarkTheme(bool value) {
    _dartTheme = value;
    darkThemePreferences.setDartTheme(value);
    notifyListeners();
  }
}
