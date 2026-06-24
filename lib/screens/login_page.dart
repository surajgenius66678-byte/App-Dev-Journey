import "package:flutter/material.dart";
import "package:flutter_application_1/utilities/routes.dart";

class LoginPage extends StatelessWidget{
const LoginPage ({super.key});
  @override
  Widget build (BuildContext context){

  return Material(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assests/images/now.jpg",fit: BoxFit.contain,height: 500,),
          SizedBox(
            height: 20,
          ),
          Text("Welcome",style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          ),
                  SizedBox(
            height: 20,
          ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:16,horizontal:20),
        child: Column(children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: "enter Username",
                labelText: "Username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "enter Password",
                labelText: "Password",
              ),
            )
        ],),
      ),
      
            SizedBox(
            height: 20,
          ),
       
      
          ElevatedButton(
            onPressed:(){
              Navigator.pushNamed(context, MyRoute.homeRoute);
              } ,
            style: TextButton.styleFrom(
              maximumSize: Size(100, 850)
              ), child: Text("Login"))
      
      ],),
    )
  );
  }
}