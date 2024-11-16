import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/widgets/themes_data.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;
  ThemeData themeData = lightTheme;

  ThemeData get _themeData => themeData;
  bool get _isDarkMode => isDarkMode;

  void toggle() {
    if (themeData == lightTheme) {
      themeData = darkTheme;
      isDarkMode = true;
      notifyListeners();
    } else {
      themeData = lightTheme;
      isDarkMode = false;
      notifyListeners();
    }
  }
}
