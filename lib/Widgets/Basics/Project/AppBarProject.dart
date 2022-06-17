import 'package:flutter/material.dart';

class AppBarProject extends StatelessWidget implements PreferredSizeWidget {
  String title;

  AppBarProject(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      centerTitle: true,
      backgroundColor: Colors.pink,
      elevation: 20,
      //toolbarHeight: 100,
      //leading: Icon(Icons.arrow_back, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.edit, color: Colors.white, size: 30),
        PopupMenuButton(
            color: Colors.red,
            elevation: 30,
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 10)),
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
                  PopupMenuItem(value: 1, child: Text("share")),
                  PopupMenuItem(value: 2, child: Text("get link")),
                ])
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(150);
}
