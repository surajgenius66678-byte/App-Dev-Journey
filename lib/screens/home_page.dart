import  "package:flutter/material.dart";
import "package:flutter_application_1/widgets/drawer.dart";

class HomePage extends StatelessWidget {
    const HomePage({super.key});
    final int day=4;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("cattle App"
        // ,style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
      ),
        body: Center(
          child:
            Text("hello everyone $day"),
          ),
          drawer: MyDrawer(),
      );
  }
}