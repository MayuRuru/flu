import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/images/sharing.png"),
    width: 300,
    height: 300,
    fit: BoxFit.cover,
    );
  }
}