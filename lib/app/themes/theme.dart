import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  primaryColorDark: const Color(0xff18044A),
  primaryColorLight: const Color(0xFFB2EBF2),
  primaryColor: const Color(0xff1E0AA4),
  accentColor: const Color(0xff391A91),
  scaffoldBackgroundColor: const Color(0xff1E0AA4),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  ),
);
