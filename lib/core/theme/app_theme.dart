import 'package:flutter/material.dart';

class AppTheme {
  static const Color primarColor = Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(

    primaryColor: primarColor,
    scaffoldBackgroundColor: Color(0xFFDFECDB),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        selectedItemColor: primarColor,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey

    ),

  );

}