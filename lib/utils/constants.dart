import 'package:flutter/material.dart';

const kPurpleGradient = LinearGradient(
  colors: [
    Color(0xFF6a1953),
    Color(0xFF9a487f),
  ],
);

const kGrayGradient = LinearGradient(
  colors: [
    Color(0xFFDADFE6),
    Color(0xFFCED2D9),
  ],
);

const kBoxShadowGray = [
  BoxShadow(
    color: Color(0xFFDADFE6),
    spreadRadius: 0.5,
    blurRadius: 2.0,
    // offset: Offset(0, 1),
  )
];

const kBoxShadowPurple = [
  BoxShadow(
    color: Color(0xFF6A1953),
    spreadRadius: 0.5,
    blurRadius: 2.0,
    // offset: Offset(0, 1),
  )
];
