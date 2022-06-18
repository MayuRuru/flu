import 'package:flutter/material.dart';
import 'package:flupro/Values/ColorsApp.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/sharing.png"),
          radius: 70,),
        Text("Mayu",
          style: TextStyle(
              fontSize:25,
              color: text1),),
        OutlinedButton(
            style:OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blueGrey,width: 1),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ) ,
            onPressed: (){print("TextButton");},
            child: Text("Edit Profile",
              style: TextStyle(color: text1),
            )
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 15),child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            columnData("13","PLAYLIST"),
            columnData("300","FOLLOWERS"),
            columnData("500","FOLLOWING"),
          ],
        )),
        Text("No recent activity",
          style: TextStyle(fontSize:20,color: text1),)

      ],
    );
  }

  columnData(String count,String title){
    return Column(
      children: [
        Text(count,style: TextStyle(color: text1),),
        Text(title,style: TextStyle(color: text2),)
      ],
    );
  }

}