import 'package:flupro/Pages/HomePage.dart';
import 'package:flupro/Widgets/MultiChild/Project/PlayingNow.dart';
import 'package:flupro/Widgets/MultiChild/Items/MyColumn.dart';
import 'package:flutter/material.dart';

import '../Model/Sound.dart';

class NowPlayingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage>{
   @override
   Widget build(BuildContext context){
     Sound sound = ModalRoute.of(context)?.settings.arguments as Sound;
     return Scaffold(
       body: SafeArea(
         child: PlayingNow(sound),
         ),
       );
   }
}