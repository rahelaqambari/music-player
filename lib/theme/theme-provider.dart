import 'package:flutter/material.dart';
import 'package:musicplayer/theme/dark_mode.dart';
import 'package:musicplayer/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // The app starts with light mode
  ThemeData _themeData = lightmode;

  // Getter: get the current theme
  ThemeData get themeData => _themeData;

  // Check whether dark mode is active
  bool get isDarkMode => _themeData == darkmode;

  // Setter: change the theme
  set setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Toggle between light and dark mode
  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }

    notifyListeners();
  }
}
