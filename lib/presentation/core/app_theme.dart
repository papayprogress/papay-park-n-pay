import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) => ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        backgroundColor: AppColor.background,
        primaryColor: AppColor.primary,
        primaryColorLight: AppColor.primary,
        colorScheme: const ColorScheme.light(
          background: AppColor.background,
          primary: AppColor.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          // filled: true,
          hintStyle: const TextStyle(
            color: AppColor.greyPrimary,
            fontSize: 12,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            gapPadding: 16,
            borderSide: const BorderSide(color: AppColor.lineStroke),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
            side: const BorderSide(color: AppColor.primary),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
          ),
        ),
      );
}

class AppColor {
  static const primary = Color(0xFF79A3B1);
  static const black = Color(0xFF3A5055);
  static const darkerBlack = Color(0xFF404040);
  static const greyPrimary = Color(0xFFD0E8F2);
  static const white = Color(0xFFFFFFFF);
  static const softPrimary = Color(0xFFFECC7A);
  static const lineStroke = Color(0xFFF3F1ED);
  static const lightPrimary = Color(0xFFD0E8F2);
  static const background = Color(0xFFFAFAFA);
}

class AppFont {
  static const headline1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.01,
  );

  static const headline2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.01,
  );

  static const headline3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.01,
    color: Colors.black,
  );

  static const subhead2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.05,
  );

  static const subhead3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.05,
    color: Colors.black,
  );

  static const paragraph4 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.05,
    color: AppColor.greyPrimary,
  );

  static const formLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColor.darkerBlack,
  );
}
