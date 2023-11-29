import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      // Add more theme configurations as needed
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      // Add dark theme configurations if needed
    );
  }
}
