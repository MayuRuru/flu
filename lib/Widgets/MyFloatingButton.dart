import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/PlaylistPage.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){
          Navigator.pushAndRemoveUntil(
              context,
              ROUTE_PLAYLIST,
                  (Route<dynamic>route) => false);
          },
        child: Icon(
          Icons.add,
          size:40,
          //label: Text("Add tool", style: TextStyle(color:Colors.black),)
      ),
      backgroundColor: Colors.green,
      elevation: 20,
      tooltip: "Add tool",
    );
  }
}
