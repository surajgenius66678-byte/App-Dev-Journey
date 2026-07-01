import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData  lightTheme (BuildContext context) =>ThemeData(
        primarySwatch : Colors.blue,
        fontFamily: GoogleFonts.poppins ().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          ),
      );

static Color creamColor = Color(0xfff5f5f5);
static Color darkbluishColor = Color(0xff403b58);
}