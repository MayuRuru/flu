import 'package:flutter/cupertino.dart';

class MyWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 30,
      runSpacing: 50,
      children: [
        Column(children: [
          Text("Hoola"),
          Text("Hoola"),
          Text("Hoola"),
        ],),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoola"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
        Text("Hoolaaaaaaaaaaaaaa"),
      ],
    ) ;
  }

}