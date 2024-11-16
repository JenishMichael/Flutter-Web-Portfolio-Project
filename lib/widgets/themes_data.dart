import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_project/constants/custom_color.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: CustomColor.AppBarBtnLight,
  scaffoldBackgroundColor: Colors.white, //For Page Background
  //
  primaryColorLight:
      const Color.fromARGB(255, 243, 223, 192), //For AppBar background
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          WidgetStateProperty.all(const Color.fromARGB(255, 231, 110, 76)),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    //For Contact Me, Download CV
    style: ButtonStyle(
      backgroundColor:
          WidgetStateProperty.all(const Color.fromARGB(255, 231, 110, 76)),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor:
      const Color.fromARGB(255, 18, 18, 18), //For Page Background
  primaryColor: Colors.white,

  brightness: Brightness.dark,
  primaryColorLight: const Color.fromARGB(255, 50, 50, 50),
  // const Color.fromARGB(255, 31, 31, 31), //For AppBar background
  //
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 33, 33, 33),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          WidgetStateProperty.all(const Color.fromARGB(255, 255, 87, 34)),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    //For Contact Me, Download CV
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
          // const Color.fromARGB(255, 231, 110, 76)
          const Color.fromARGB(255, 255, 87, 34)),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
);
