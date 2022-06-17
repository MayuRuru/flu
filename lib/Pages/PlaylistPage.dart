import 'package:flupro/Common/MyKeys.dart';
import 'package:flupro/Widgets/ListAndGrid/Items/MyCard.dart';
import 'package:flupro/Widgets/ListAndGrid/Items/MyContainer.dart';
import 'package:flupro/Widgets/ListAndGrid/MyGridView.dart';
import 'package:flupro/Widgets/ListAndGrid/MyListView.dart';
import 'package:flupro/Pages/NowPlayingPage.dart';
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
         onPressed: () {
           //aca cambiamos a modo light o dark:
           myAppKey.currentState!.changeTheme(ThemeMode.dark);
         }
       ),
       body: SafeArea(
         child: PlaylistView(),
         ),
       );
   }
}