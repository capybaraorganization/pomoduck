import 'package:flutter/material.dart';

//TODO: Modify this class
class PomoduckTheme{
  PomoduckTheme._();

  static ThemeData get themeData => ThemeData(
    primaryColor: Colors.blue,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat',
    textTheme:  const TextTheme(
      displayLarge:  TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
      ),
      displayMedium:  TextStyle(
        fontSize: 36.0,
        fontStyle: FontStyle.italic,
      ),
      bodySmall: TextStyle(
        fontSize: 14.0,
        fontFamily: 'Hind',
      ),
    ),
  );
}