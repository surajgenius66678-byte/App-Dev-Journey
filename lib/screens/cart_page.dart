import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/theme.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: MyTheme.creamColor,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: Text("Cart",textAlign: TextAlign.center,),
      centerTitle: true,
    ),
   );    
  }
}