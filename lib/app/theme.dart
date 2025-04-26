import 'package:flutter/material.dart';

const Color tdRed = Color(0xFFDA4040);
const Color tdBLue = Color.fromARGB(255, 0, 47, 255);
const Color tdBlack = Color(0xFF3A3A3A);
const Color tdGrey = Color(0xFF717171);
const Color tdBGColor = Color(0xFFEEEFF5);

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: Color.fromARGB(255, 238, 239, 245),
      colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 113, 113, 113),
          secondary: Color.fromARGB(255, 17, 17, 251),
          error: const Color.fromARGB(255, 222, 1, 1),
          surface: Colors.white,
          onSurface: Color.fromARGB(255, 62, 62, 62),
          tertiary: const Color.fromARGB(255, 21, 21, 21)),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 14, 14, 14))));
}
