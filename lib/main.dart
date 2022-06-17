import 'package:flupro/Common/MyKeys.dart';
import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Values/ThemeApp.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Values/ColorsApp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //creamos constructor y asignamos llave global:
  MyApp():super(key: myAppKey);

  @override
  State<StatefulWidget> createState()=>MyAppState();
}

class MyAppState extends State<MyApp>{

  ThemeMode themeMode = ThemeMode.light;

  Widget build(BuildContext context) {

    return Sizer(builder:
        (context, orientation, deviceType)=>
            MaterialApp(
      title: 'First Flutter',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: ROUTE_LOGIN,
      themeMode: themeMode, //variable asignada con llave que se puede cmabiar estado
      darkTheme: ThemeData(
          textTheme: textThemeDark,
          scaffoldBackgroundColor: backgroundDark,
          iconTheme:  iconThemeData1 ,
          primaryIconTheme: iconThemeDark
      ),
      theme: ThemeData(indicatorColor: Colors.red,
        textTheme: textTheme,
        scaffoldBackgroundColor: background,
        iconTheme: iconThemeData1,
        primaryIconTheme: iconThemeData1
      ),
    )
    );
  }

  changeTheme(ThemeMode themeMode){
    setState((){
      this.themeMode = themeMode;
    });
  }
}

