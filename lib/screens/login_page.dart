import "package:flutter/material.dart";
import "package:flutter_application_1/utilities/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ischanged = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assests/images/now.jpg",
              fit: BoxFit.contain,
              height: 500,
            ),
            SizedBox(height: 20),
            Text(
              name.isEmpty?"Welcome" :"Welcome , Hi $name",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ElevatedButton(
            //   onPressed:(){
            //     Navigator.pushNamed(context, MyRoute.homeRoute);
            //     } ,
            //   style: TextButton.styleFrom(
            //     maximumSize: Size(100, 850)
            //     ), child: Text("Login"))
            InkWell(
              onTap:()async{
                setState(() {
                  ischanged=true;
                });
                await Future.delayed(Duration(seconds: 1));
                if (!context.mounted) return;
                Navigator.pushNamed(context, MyRoute.homeRoute);
                },

              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: ischanged?50:150,
                height: 50,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                color: Colors.deepPurple,
                // shape: ischanged
                // ?BoxShape.circle:
                // BoxShape.rectangle,
                borderRadius: BorderRadius.circular(ischanged?50:10),
              
                ),
                child:ischanged?(Icon(Icons.done,color: Colors.white,)): Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
