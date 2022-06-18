import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/PlaylistPage.dart';
import 'package:flutter/material.dart';
import 'package:flupro/Values/ColorsApp.dart';


class FloatingActionButtonProject extends StatelessWidget {
  VoidCallback voidCallback;
  FloatingActionButtonProject(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: ()=> {
          Navigator.popAndPushNamed(context, ROUTE_PLAYLIST),
        },
        child: Icon(
          Icons.music_note,
          size:40,
      ),
      backgroundColor: icons1,
    );
  }
}
