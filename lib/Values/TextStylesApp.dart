import 'package:flutter/material.dart';

import 'ColorsApp.dart';

class TextStylesApp {
  TextStylesApp();

  TextStyle get textBase =>
      TextStyle(
        color: text1,
        fontFamily: "Teko",
      );

  TextStyle get subtitle1 =>
      textBase.copyWith(
        fontWeight: FontWeight.w400,
        //fontSize:
      );

  TextStyle get subtitle1Dark => subtitle1.copyWith(color: textDark);


  TextStyle get bodyText1 =>
      textBase.copyWith(
        //fontSize:
      );

  TextStyle get bodyText1Dark => bodyText1.copyWith(color: textDark);


  TextStyle get bodyText2 =>
      textBase.copyWith(
        //fontSize:captionSP,
          fontWeight: FontWeight.bold,
          color: text2
      );

  TextStyle get bodyText2Dark => bodyText2.copyWith(color: textDark);


  TextStyle get headline4 =>
      textBase.copyWith(
        //fontSize:
      );

  TextStyle get headline4Dark =>
      headline4.copyWith(
          color: textDark
      );


  TextStyle get headline3 =>
      textBase.copyWith(
        //fontSize:
      );

  TextStyle get headline3Dark =>
      headline3.copyWith(
          color: textDark
      );

  TextStyle get caption =>
      textBase.copyWith(
        //fontSize: captionSP
      );

  TextStyle get captionDark =>
      headline3.copyWith(
          color: textDark
      );
}