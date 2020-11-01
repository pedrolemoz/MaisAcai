import 'package:flutter/material.dart';

final appTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  backgroundColor: Color(0xFFF5F8FC),
  scaffoldBackgroundColor: Color(0xFFF5F8FC),
  primaryColor: Color(0xFF6A1953),
  primaryColorDark: Color(0xFF3c002a),
  primaryColorLight: Color(0xFF965285),
  textTheme: TextTheme(
    headline4: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    headline6: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
    subtitle2: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      fontFamily: 'Manrope',
      color: Color(0xFF0E0E0E),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
  ),
);
