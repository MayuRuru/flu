import 'package:flupro/Widgets/Basics/MyAppBar.dart';
import 'package:flupro/Widgets/Basics/MyButtons.dart';
import 'package:flupro/Widgets/Basics/MyFloatingButton.dart';
import 'package:flupro/Widgets/Basics/MyIcon.dart';
import 'package:flupro/Widgets/Basics/MyImage.dart';
import 'package:flupro/Widgets/Basics/MyRichText.dart';
import 'package:flupro/Widgets/Menu/Fragments/MyHome.dart';
import 'package:flupro/Widgets/Menu/Fragments/MyProfile.dart';
import 'package:flupro/Widgets/Menu/Fragments/MySettings.dart';
import 'package:flupro/Widgets/Menu/MyBottomNavbar.dart';
import 'package:flupro/Widgets/Menu/MyDrawer.dart';
import 'package:flutter/material.dart';

import '../Widgets/Basics/MyText.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List fragments = [
    MyHome(),
    MyProfile(),
    MySettings(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        //hamburguesa
        bottomNavigationBar: MyBottomNavbar(onTab, currentIndex),
        backgroundColor: Colors.pinkAccent,
        floatingActionButton: MyFloatingButton(buttomSheet),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: MyAppBar("title title"),
        body: fragments[currentIndex]);
  }

  buttomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Get Link"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Send"),
              ),
            ],
          );
        });
  }

  onTab(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }
}
