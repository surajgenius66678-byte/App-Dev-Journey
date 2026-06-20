import  "package:flutter/material.dart";

class HomePage extends StatelessWidget {
    const HomePage({super.key});
    final int day=4;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("cattle App"),
      ),
        body: Center(
          child:
            Text("hello everyone $day"),
          ),
          drawer: Drawer(),
      );
  }
}