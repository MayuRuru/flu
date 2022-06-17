import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/PlaylistPage.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: (){print("FloatingActionButton");},
      icon: Icon(Icons.add,size: 40,color: Colors.black,),
      label: Text("Add tool",style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.yellow,
      elevation: 20,
      tooltip: "Add tool",
    );
  }
}
