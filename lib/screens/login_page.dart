import "package:flutter/material.dart";

class LoginPage extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){

  return Material(
    child: Column(
      children: [
        Image.asset("assests/images/now.jpg",fit: BoxFit.contain,),
        SizedBox(
          height: 20,
        ),
        Text("Welcome",style: TextStyle(
          fontSize: 24,
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
 

        ElevatedButton(onPressed:(){debugPrint("lets goo");} ,style: TextButton.styleFrom(), child: Text("Login"))

    ],)
  );
  }
}