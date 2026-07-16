import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cart_page.dart';
import 'package:flutter_application_1/utilities/routes.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/theme.dart';
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
      debugShowCheckedModeBanner : false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/":(context)=>HomePage(),
        MyRoute.loginRoute:(context)=>LoginPage(),
        MyRoute.homeRoute:(context)=> HomePage(),
        MyRoute.cartRoute:(context)=> CartPage(),
      },
    );
  }
} 