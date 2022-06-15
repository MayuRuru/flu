import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () { 
            Navigator.pushNamed(context, ROUTE_HOME);
          },
          child: Text("HomePage"),
        ),
      ),
    );
  }
}