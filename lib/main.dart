import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});

@override
  Widget build(BuildContext context){
    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch : Colors.grey,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/":(context)=>LoginPage(),
        "/home":(context)=> HomePage(),
      },
    );
  }
} 