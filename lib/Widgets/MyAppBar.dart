import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Inicio"),
      centerTitle: true,
      backgroundColor: Colors.pink,
      elevation: 20,
      //toolbarHeight: 100,
      leading: Icon(Icons.arrow_back, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more, color: Colors.white),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
