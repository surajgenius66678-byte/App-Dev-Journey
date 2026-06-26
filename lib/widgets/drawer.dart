import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  const MyDrawer ({super.key});
  @override
  Widget build(BuildContext context) {
    String imageUrl = "https://en.wikipedia.org/wiki/Akshay_Kumar#/media/File:Akshay_Kumar_National_Award_for_Padman_(cropped).jpg";
    return Drawer(
      child:Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
        
                accountName: Text("Suraj Kumar"), 
                accountEmail: Text("surajkumarrq77@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),),
                ) ,),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                    ),
                    title: Text("Home",
                    textScaler: TextScaler.linear(1.5),
                    style : TextStyle(
                      color: Colors.white,
                    )),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                    ),
                    title: Text("Profile",
                    textScaler: TextScaler.linear(1.5),
                    style : TextStyle(
                      color: Colors.white,
                    )),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                    ),
                    title: Text("Email",
                    textScaler: TextScaler.linear(1.5),
                    style : TextStyle(
                      color: Colors.white,
                    )),
                )
          ],
        ),
      ),
    );
  }
}