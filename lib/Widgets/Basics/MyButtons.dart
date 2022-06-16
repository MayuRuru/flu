import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return myOutlineButton();
  }
  
  UpButton(){
    return ElevatedButton.icon(
      icon: Icon(Icons.save, color: Colors.red,),
      label: Text("Save"),
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.black,
        shadowColor: Colors.yellow,
        elevation:20,
      ),
        onPressed: (){
          print("upButton");
        },);
  }

  myTextButton(){
    return TextButton(
        onPressed: (){print("textButton");},
        child: Text("Save"));
  }

  myOutlineButton(){
    return OutlinedButton(
      style:OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.yellow,
          width: 5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
        onPressed: (){print("outButton");},
        child: Text("Save"));
  }
  
}
