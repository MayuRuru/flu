import 'package:flutter/material.dart';

Color? get icons1 => Colors.pink[100];
Color? get icons2 => Colors.blueGrey;
Color get  iconsDark => Colors.white;


Color get text1 =>Colors.blueGrey;
Color? get text2 => Colors.pink[100];
Color get textDark => Colors.white;

Color get background => Colors.white;
Color get backgroundDark => Colors.black;

//opacity:
Color get testOpacity => Colors.red.withOpacity(1);

//convert HEX format to flutter:
Color hexToColor(String code)=>Color(int.parse(code.substring(1,7),radix: 16)+ 0xFF000000);
Color get testHex => hexToColor("#1cba9a");