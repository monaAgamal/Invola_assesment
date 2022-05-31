import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invola_assesment/core/app_theme/app_color_palate.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
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
        textTheme: TextTheme(
          bodyLarge: const TextStyle(
            color: Colors.grey,
          ),
          bodyMedium: const TextStyle(
            color: Colors.grey,
          ),
          bodySmall: const TextStyle(
            color: Colors.grey,
          ),
          bodyText1: const TextStyle(
            color: Colors.grey,
          ),
          bodyText2: const TextStyle(
            color: Colors.grey,
          ),
          button: const TextStyle(
            color: Colors.grey,
          ),
          caption: const TextStyle(
            color: Colors.grey,
          ),
          displayLarge: const TextStyle(
            color: Colors.grey,
          ),
          displayMedium: const TextStyle(
            color: Colors.grey,
          ),
          displaySmall: const TextStyle(
            color: Colors.grey,
          ),
          headline1: const TextStyle(
            color: Colors.grey,
          ),
          headline2: const TextStyle(
            color: Colors.grey,
          ),
          headline3: const TextStyle(
            color: Colors.grey,
          ),
          headline4: const TextStyle(
            color: Colors.grey,
          ),
          headline5: const TextStyle(
            color: Colors.grey,
          ),
          headline6: const TextStyle(
            color: Colors.grey,
          ),
          headlineLarge: const TextStyle(
            color: Colors.grey,
          ),
          headlineMedium: const TextStyle(
            color: Colors.grey,
          ),
          headlineSmall: const TextStyle(
            color: Colors.grey,
          ),
          labelLarge: const TextStyle(
            color: Colors.grey,
          ),
          labelMedium: const TextStyle(
            color: Colors.grey,
          ),
          labelSmall: const TextStyle(
            color: Colors.grey,
          ),
          overline: const TextStyle(
            color: Colors.grey,
          ),
          subtitle1: const TextStyle(
            color: Colors.grey,
          ),
          subtitle2: const TextStyle(
            color: Colors.grey,
          ),
          titleLarge: const TextStyle(
            color: Colors.grey,
          ),
          titleMedium: const TextStyle(
            color: Colors.grey,
          ),
          titleSmall: const TextStyle(
            color: Colors.grey,
          ),
        ),
      );
}
