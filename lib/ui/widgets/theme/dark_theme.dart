import 'package:flutter/material.dart';

final accentColor = Colors.greenAccent;
final textColor = Colors.grey[400];

ThemeData get darkTheme {
  return ThemeData(
    accentColor: accentColor,
    primaryColorLight: accentColor,
    primaryColorDark: accentColor,
    iconTheme: IconThemeData(
      color: accentColor,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 1,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: accentColor),
      selectedItemColor: textColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor.withOpacity(0.8)),
      ),
      labelStyle: TextStyle(color: textColor),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor),
      ),
    ),
    brightness: Brightness.dark,
    disabledColor: Colors.grey,
  );
}
