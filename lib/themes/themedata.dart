import 'package:flutter/material.dart';

final ThemeData foodAppThemeData = ThemeData(
  primaryColor: Color(0xFFFFE8E1),
  colorScheme: const ColorScheme(
    primary: Color(0xFFFFECB3),
    primaryContainer: Color(0xFFFFECB3), // A darker variant of primary
    secondary: Color.fromARGB(255, 246, 189, 105), // This replaces accentColor
    secondaryContainer: Color(0xFFFF9900), // A darker variant of secondary
    surface: Colors.white,
    background: Color(0xFFFFE8E1),
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.black, // Light gray background
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF131A22),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 50.0,
      fontWeight: FontWeight.w100,
    ),
    toolbarTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: const Color(0xFFFFECB3),
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w100,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w100,
      fontSize: 50,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w100,
      fontSize: 30,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 25,
      shadows: [
        Shadow(
          color: Colors.black,
          blurRadius: 10.0,
          offset: Offset(3.0, 3.0),
        ),
      ],
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF555555),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFFFECB3),
      side: const BorderSide(
        color: const Color(0xFFFFECB3),
        width: 1.0,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color.fromARGB(255, 246, 189, 105),
      ),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      textStyle: MaterialStateProperty.all(const TextStyle(
        color: Colors.black,
      )),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(color: Colors.black),
      ),
      backgroundColor: MaterialStateProperty.all(const Color(0xFFFFECB3)),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: const Color(0xFFFFECB3)),
        ),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(color: Colors.white),
    hintStyle: const TextStyle(color: Colors.white),
    fillColor: Colors.white,
    filled: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        width: 1.0,
        color: Color(0xFFAAAAAA),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.orange),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.orange;
      }
      return Colors.orange;
    }),
    overlayColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.white.withOpacity(0.0);
      }
      return Colors.white;
    }),
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.white.withOpacity(0.2);
      }
      return Colors.white;
    }),
  ),
  listTileTheme: const ListTileThemeData(
    textColor: Colors.white,
    leadingAndTrailingTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
    ),
  ),
);
