import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invola_assesment/core/app_theme/app_color_palate.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme(
          background: backgroundColor,
          onBackground: onBackgroundColor,
          onError: onErrorColor,
          onPrimary: onPrimaryColor,
          onSecondary: onSecondaryColor,
          onSurface: onPrimaryColor,
          surface: onSurfaceColor,
          // errorContainer:  ,
          brightness: Brightness.light,
          secondary: secondaryColor,
          primary: Colors.white,
          error: errorColor,
        ),
        textTheme: TextTheme(),
      );
}
