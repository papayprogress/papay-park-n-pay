import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) => ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        backgroundColor: AppColor.background,
        primaryColor: AppColor.orange,
        primaryColorLight: AppColor.orange,
        colorScheme: const ColorScheme.light(
          background: AppColor.background,
          primary: AppColor.orange,
        ),
        inputDecorationTheme: InputDecorationTheme(
          // filled: true,
          hintStyle: const TextStyle(
            color: AppColor.greyOrange,
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
            side: const BorderSide(color: AppColor.orange),
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
  static const orange = Color(0xFFFF9F02);
  static const black = Color(0xFF434343);
  static const darkerBlack = Color(0xFF404040);
  static const greyOrange = Color(0xFFD9D2C7);
  static const white = Color(0xFFFFFFFF);
  static const softOrange = Color(0xFFFECC7A);
  static const lineStroke = Color(0xFFF3F1ED);
  static const lightOrange = Color(0xFFFFEBCA);
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
    color: AppColor.greyOrange,
  );

  static const formLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColor.darkerBlack,
  );
}