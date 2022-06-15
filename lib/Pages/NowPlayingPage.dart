import 'package:flupro/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class NowPlayingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage>{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       body: SafeArea(
         child: ElevatedButton(
           onPressed: () {Navigator.pop(context);},
           child: Text("HomePage"),
           ),
         ),
       );
   }
}