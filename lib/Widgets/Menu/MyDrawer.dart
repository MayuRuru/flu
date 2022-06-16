import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture:
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/sharing.png"),
              ),
              accountName: Text("Marines Mendez"),
              accountEmail: Text("marines@codigofacilito.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("My list"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Settings"),
          ),
          Divider(
            height: 6,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Log out"),
          ),
        ],
      ),
    ) ;
  }

}