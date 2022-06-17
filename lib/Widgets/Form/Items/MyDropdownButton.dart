import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDropdownButtonState();
}

class MyDropdownButtonState extends State<MyDropdownButton> {
  String? currentValue = "";
  List<String>tools=["Bike", "Hammer", "Tractor", "Shovel"];

  @override
  void initState() {
    currentValue = tools[0];
  }

  @override
  Widget build(BuildContext context) {

    return DropdownButton(
        value:currentValue,
        dropdownColor: Colors.orangeAccent,
        icon: Icon(Icons.pedal_bike),

        onChanged: (String? value){
          if(value!=null && currentValue!=value)
            setState(() {
              this.currentValue=value;
            });
        },
        items: tools.map((String tool) =>
            DropdownMenuItem<String>(value:tool ,child: Text(tool))).toList());
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}