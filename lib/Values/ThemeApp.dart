import 'package:flupro/Values/TextStylesApp.dart';
import 'package:flutter/material.dart';
import 'ColorsApp.dart';

  TextTheme get textTheme =>
      TextTheme(
          subtitle1: subtitle1,
          bodyText2: bodyText2,
          bodyText1: bodyText1,
          headline4: headline4,
          headline3: headline3,
          caption: caption
      );

  TextTheme get textThemeDark =>
      TextTheme(
          subtitle1: subtitle1Dark,
          bodyText2: bodyText2Dark,
          bodyText1: bodyText1Dark,
          headline4: headline4Dark,
          headline3: headline3Dark,
          caption: captionDark
      );

  IconThemeData get iconThemeData1 =>
      IconThemeData(
          color: icons1,
      );

  IconThemeData get iconThemeData2 =>
      iconThemeData1.copyWith(color: icons2);

 IconThemeData get iconThemeDark =>
      IconThemeData(
          color: iconsDark
      );
