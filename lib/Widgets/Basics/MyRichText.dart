import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  //const MyText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(text:
    TextSpan(
      text: "Estas registrada?",
      style: TextStyle(
          color: Colors.black,
          fontSize: 20),
      children: [
        TextSpan(text: "Inicia sessio",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontSize: 20
        ),
        ),
      ],
    ));
  }
}
