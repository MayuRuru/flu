import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {
  String currentValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            value: "Radio1",
            title: Text("option 1"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }),
        RadioListTile(
            value: "Radio2",
            title: Text("option 2"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }),
      ],
    );
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
