import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ()=>selectDate(),
        child: Text(selectedDate.toString()));
  }

  selectDate()async{
    DateTime? dateTime = await showDatePicker(context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2022), lastDate: DateTime(2023));
    if(dateTime!=null && selectedDate !=dateTime){
      setState(() {
        this.selectedDate=dateTime;
      });
    }

  }

}