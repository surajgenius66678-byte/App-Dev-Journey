import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
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
        MyRoute.loginRoute:(context)=>LoginPage(),
        MyRoute.homeRoute:(context)=> HomePage(),
      },
    );
  }
} 