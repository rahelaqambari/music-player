import 'package:flutter/material.dart';
import 'package:musicplayer/theme/dark_mode.dart';
import 'package:musicplayer/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // at first it must be light
  ThemeData _themeData = lightmode;

    // we need geeter to take the  now theme
    ThemeData get ThemeData => _themeData;

    // is our theme dark mode or no ?
    bool get isDarkmode => _themeData == darkmode;

    // seeter for change of the theme
    set setThemeData(ThemeData themedata) {
      _themeData = themedata;

      notifyListeners();

    }
    // for changing the theme we must make a function
    
}