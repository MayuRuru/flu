import 'package:flupro/Common/MyKeys.dart';
import 'package:flupro/Widgets/Items/Items/MyCard.dart';
import 'package:flupro/Widgets/Items/Items/MyContainer.dart';
import 'package:flupro/Widgets/Items/MyGridView.dart';
import 'package:flupro/Widgets/Items/MyListView.dart';
import 'package:flupro/Pages/NowPlayingPage.dart';
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
         onPressed: ()=> myListViewKey.currentState?.add(Sound(title: "Lalal", singer: "lele")),
         child: Icon(Icons.add),
       ),
       body: SafeArea(
         child: MyListView(),
         ),
       );
   }
}