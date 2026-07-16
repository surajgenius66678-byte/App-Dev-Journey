import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData  lightTheme (BuildContext context) =>ThemeData(
        primarySwatch : Colors.blue,
        // fontFamily: GoogleFonts.poppins ().fontFamily,
        cardColor: Colors.white,
          canvasColor: creamColor,
          extensions: [
            MyColors( 
              buttonColor: darkbluishColor,
              accentColor: darkbluishColor
            )
          ],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          ),
      );

  static ThemeData darkTheme(BuildContext context)=>ThemeData(
          // primarySwatch : Colors.blue,
          // fontFamily: GoogleFonts.poppins ().fontFamily,
          brightness: Brightness.dark,
          cardColor: Colors.black,
          canvasColor: darkcreamColor,
          extensions: [
            MyColors( 
              buttonColor: lightbluishColor,
              accentColor: Colors.white,
            )
          ],       
          appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
  ));

static Color creamColor = Color(0xfff5f5f5);
static Color darkcreamColor = Color(0xff1f2937);
static Color darkbluishColor = Color(0xff403b58);
static Color lightbluishColor = Color(0xff6366f1);
}