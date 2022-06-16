import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print("hi");},
      child: Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical:30),
      child: Text("Hola Mayu"),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(
          color: Colors.black,
        )
      ),
    ),
      );
  }
}
