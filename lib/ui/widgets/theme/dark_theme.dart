import 'package:flutter/material.dart';

final accentColor = Colors.greenAccent;
final textColor = Colors.grey[400];
const appBarColor = Color(0xFF212121);

ThemeData get darkTheme {
  return ThemeData(
    colorScheme: ColorScheme.dark(secondary: accentColor),
    primaryColorLight: accentColor,
    primaryColorDark: accentColor,
    iconTheme: IconThemeData(
      color: accentColor,
    ),
    appBarTheme: const AppBarTheme(
      color: appBarColor,
      elevation: 1,
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
    brightness: Brightness.dark,
    disabledColor: Colors.grey,
  );
}
