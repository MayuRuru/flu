import 'package:flupro/Widgets/Form/Project/LoginForm.dart';
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
        child: LoginForm(),
      ),
    );
  }
}