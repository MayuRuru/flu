import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/PlaylistPage.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  VoidCallback voidCallback;
  MyFloatingButton(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: ()=> voidCallback(),
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
