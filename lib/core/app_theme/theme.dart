import 'package:flutter/material.dart';
import 'package:invola_assesment/core/app_theme/app_color_palate.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
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
          primary: primaryColor,
          error: errorColor,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: textColor),
          bodyText1: TextStyle(color: textColor),
        ),
        dividerColor: dividerColor,
      );
}
