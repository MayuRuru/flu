import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  //const MyText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "Benvingudes a la meva primera app de flutter",
      style: TextStyle(
        color: Colors.white,
        backgroundColor: Colors.black26,
        fontSize: 30,
        letterSpacing: 5,
        fontFamily: "Catalina"
        ),
      textAlign: TextAlign.justify,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
