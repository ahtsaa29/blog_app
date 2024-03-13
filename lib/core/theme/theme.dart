import 'package:blog_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallette.borderColor]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallette.backgroundColor,
    ),
    scaffoldBackgroundColor: AppPallette.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24.0),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallette.gradient2),
    ),
  );
}
