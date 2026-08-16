import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';

import 'package:flutter_application_1/screens/cart_page.dart';
import 'package:flutter_application_1/utilities/routes.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
void main(){
  runApp(
    VxState( store:MyStore() ,child: MyApp())
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
      initialRoute: MyRoute.homeRoute,
      routes: {
        "/":(context)=>
        LoginPage(),
        MyRoute.loginRoute:(context)=>LoginPage(),
        MyRoute.homeRoute:(context)=> HomePage(),
        MyRoute.cartRoute:(context)=> CartPage(),
      },
    );
  }
} 