import 'package:flupro/Widgets/MyAppBar.dart';
import 'package:flupro/Widgets/MyButtons.dart';
import 'package:flupro/Widgets/MyFloatingButton.dart';
import 'package:flupro/Widgets/MyIcon.dart';
import 'package:flupro/Widgets/MyImage.dart';
import 'package:flupro/Widgets/MyRichText.dart';
import 'package:flutter/material.dart';

import '../Widgets/MyText.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      floatingActionButton: MyFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: MyAppBar(),
      body: SafeArea(
        child: Center(
          child:MyImage(),
        )
      )
    );
  }
}
