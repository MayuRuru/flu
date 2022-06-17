import 'package:flutter/material.dart';
import 'dart:ui';


Color? get icons1 => Colors.purple[200];
Color? get icons2 => Colors.green[300];
Color get  iconsDark => Colors.white;


Color get text1 => Colors.blueGrey;
Color? get text2 => Colors.purple[200];
Color get textDark => Colors.white;

Color get background => Colors.grey;
Color get backgroundDark => Colors.black;

//opacity:
Color get testOpacity => Colors.red.withOpacity(1);

//convert HEX format to flutter:
Color hexToColor(String code)=>Color(int.parse(code.substring(1,7),radix: 16)+ 0xFF000000);
Color get testHex => hexToColor("#1cba9a");