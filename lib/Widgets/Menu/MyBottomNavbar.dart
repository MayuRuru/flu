import 'package:flutter/material.dart';
//import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/SoundListTile.dart';
typedef VoidCallbackParam(int index);

class MyBottomNavbar extends StatelessWidget{
  VoidCallbackParam voidCallbackParam;
  int currentIndex;
  MyBottomNavbar(this.voidCallbackParam ,this.currentIndex);

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        onTap: voidCallbackParam,
        selectedItemColor: Colors.green, //color de items de bootombar
        //unselectedItemColor: Colors.red,
        iconSize: 30,
        selectedLabelStyle: TextStyle(
            fontSize: 25
        ),
        unselectedLabelStyle:TextStyle(
            fontSize: 25
        ),
        //backgroundColor: Colors.blue,

        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings")
        ]);
  }

}