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
  final _formkey = GlobalKey<FormState>();
   dynamic moveToHome (BuildContext context)
  async
  {
if (_formkey.currentState!.validate()){
setState(() {
ischanged = true;
});
await Future.delayed(Duration(seconds: 1));
if (!context.mounted) return;
await Navigator.pushNamed(context, MyRoute.homeRoute);
setState(() {
  ischanged = false;
});
  }              
}  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
         
          children: [
            SizedBox(height: 20),
            Image.asset(
              "assests/images/now.png",
              fit: BoxFit.cover,
              // height: 500,
            ),
            SizedBox(height: 20),
            Text(
              name.isEmpty ? "Welcome" : "Welcome , Hi $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Form(
                key : _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter Username",
                        labelText: "Username",
                        
                      ),
                      validator: (value){
                        if(value == null ||value.isEmpty){
                          return "you have not enterd an username";
                        }
                        return null ;
                      },
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
                      validator: (value){
                        if(value == null ||value.isEmpty){
                          return "you have not enterd an password";
                        }
                        else if(value.length<6){
                          return "password should be more than 6 letters";
                        }
                        return null ;
                      },
                    ),
                  ],
                ),
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
            Material(
              color: Colors.purple,
                    borderRadius:
                     BorderRadius.circular(ischanged ? 50 : 10),
              child: InkWell(
                onTap: () =>moveToHome(context),
              
                child: AnimatedContainer(
                  
                  duration: Duration(seconds: 1),
                  width: ischanged ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
              
                  // decoration: BoxDecoration(
                  //   color: Colors.deepPurple,
                  //   // shape: ischanged
                  //   // ?BoxShape.circle:
                  //   // BoxShape.rectangle,
                  // ),
                  child: ischanged
                      ? (Icon(Icons.done, color: Colors.white))
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
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
