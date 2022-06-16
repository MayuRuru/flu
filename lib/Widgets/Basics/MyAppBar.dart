import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MyAppBar(this.title);

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
        Icon(Icons.more, color: Colors.white),
        PopupMenuButton(
          icon: Icon(Icons.more_vert),
            itemBuilder: (context)=> [
              PopupMenuItem(
                value: 1,
                  child: Text("share")),
              PopupMenuItem(
                value:2,
                  child: Text("get link")),
        ])
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
