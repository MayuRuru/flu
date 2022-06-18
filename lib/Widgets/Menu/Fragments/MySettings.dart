import 'package:flutter/material.dart';
import 'package:flupro/Values/ColorsApp.dart';

class MySettings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Free account",style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 15,
        ),
        ),
        OutlinedButton(
            style:OutlinedButton.styleFrom(
                padding: EdgeInsets.all(15),
                side: BorderSide(color: Colors.blueGrey,width: 1),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ) ,
            onPressed: (){print("TextButton");},
            child: Text("Upgrade to premium",
              style: TextStyle(
                  fontSize:19,
                  color: text1,
              ),
            )
        ),

        SwitchListTile(
            title: Text("Audio quality",style: TextStyle(
                color: text1,
            ),
            ),
            value: false,
            activeColor: icons2,
            onChanged: (value){}),
        SwitchListTile(
            title: Text("Non stop",style: TextStyle(
                color:  text1,
            ),),
            value: false,
            activeColor: icons2,
            onChanged: (value){}),
        SwitchListTile(
            title: Text("Auto Play",style: TextStyle(
                color:  text1,
            ),),
            value: true,
            activeColor: icons2,
            onChanged: (value){}),
        ListTile(
          trailing: Icon(Icons.close),
          title: Text("Log out"),
          subtitle: Text("You are logged in!"),
        )
      ],
    );
  }

}