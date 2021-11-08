import 'package:flutter/material.dart';

final accentColor = Colors.indigo;
final textColor = Colors.black87;

ThemeData get lightTheme {
  return ThemeData(
    colorScheme: ColorScheme.light(secondary: accentColor),
    primaryColorLight: accentColor,
    primaryColorDark: accentColor,
    iconTheme: IconThemeData(
      color: accentColor,
    ),
    appBarTheme: AppBarTheme(
      elevation: 1,
      shadowColor: Colors.transparent,
      color: accentColor,
    ),
    navigationRailTheme: NavigationRailThemeData(
      selectedIconTheme: IconThemeData(color: accentColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: accentColor),
      selectedItemColor: textColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: accentColor,
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
    brightness: Brightness.light,
    disabledColor: Colors.grey,
  );
}
