import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  //const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){print("doubletab");},
      onTapDown: (TapDownDetails downDetails) {print("al presionar el usuario ${downDetails.globalPosition}");},
      //onTapUp > al dejar de preseionar
      child: Card(
      margin: EdgeInsets.all(20),
      color: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.red,
          width: 10,
        )
      ),
      elevation: 10,
      child: Text("Im a card",
      style: TextStyle(
        fontSize: 40,
      ),),
    ) ,);
  }
}
