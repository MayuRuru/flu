import 'package:flupro/Common/MyKeys.dart';
import 'package:flupro/Widgets/ListAndGrid/Project/PlaylistView.dart';
import 'package:flutter/material.dart';

import '../Model/Sound.dart';

class PlaylistPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage>{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.pink[100],
           onPressed: (){
           //aca cambiamos a modo light o dark:
           myAppKey.currentState!.changeTheme(ThemeMode.dark);
         },
         child: Icon(Icons.nightlight_round,),
       ),
       body: SafeArea(
         child: PlaylistView(),
         ),
       );
   }
}