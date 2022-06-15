import 'package:flupro/Pages/HomePage.dart';
import 'package:flupro/Pages/LoginPage.dart';
import 'package:flupro/Pages/NowPlayingPage.dart';
import 'package:flupro/Pages/PlaylistPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAYLIST = "/playlist";
const String ROUTE_NOWPLAYING = "/nowplaying";

class MyRoutes{
static Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
    case "/home":
      return PageTransition(child:HomePage(), type: PageTransitionType.leftToRight,
      settings: settings,);
    case "/login":
      return MaterialPageRoute(builder: (_)=>LoginPage());
    case "/playlist":
      return MaterialPageRoute(builder: (_)=>PlaylistPage());
    case "/nowplaying":
      return MaterialPageRoute(builder: (_)=>NowPlayingPage());
    default:
      return MaterialPageRoute(builder: (_)=>LoginPage());
  }

}
}