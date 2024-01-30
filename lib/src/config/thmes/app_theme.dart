// 앱의 전반적인 테마에 대해 정의한 클래스

import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light{
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
    );
  }
}