import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {

    return SwitchListTile(
        title: Text(isSwitched?"On":"Off"),
        value: isSwitched,
        activeTrackColor: Colors.black,
        activeColor: Colors.red,
        onChanged:(value)=>onChanged(value));
  }

  onChanged(value){
    setState(() {
      this.isSwitched=value;
    });
  }
}