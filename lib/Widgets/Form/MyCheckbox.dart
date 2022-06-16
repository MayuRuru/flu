import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckboxState();
}

class MyCheckboxState extends State<MyCheckbox> {
String currentValue = "";
List<String>tools=["Bike", "Hammer", "Tractor", "Shovel"];
List<bool>isChecked=[];

@override
void initState() {
isChecked=List<bool>.filled(tools.length, false);
}

@override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(isChecked.toString()),
      ListView.builder(
        shrinkWrap: true,
      itemCount: tools.length,
        itemBuilder: (context, index){
        return CheckboxListTile(
          title: Text(tools[index]),
            value: isChecked[index],
            onChanged: (value){
            setState((){
              isChecked[index]=value as bool;
            });
            });
        })],);
  }
}
