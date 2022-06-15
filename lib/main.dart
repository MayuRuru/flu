import 'package:flupro/Common/MyRoutes.dart';
import 'package:flupro/Pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstFlut',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: ROUTE_LOGIN,
      //theme: ThemeData(),
      home:LoginPage(),
    );
  }
}


/*

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Widget1, eureka',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
            ),
            ),
            TextButton(
                onPressed: () {
                  print('hello carck');
                },
              child:
              const Text('Hit me!',
                  style: TextStyle(
                      color: Colors.blue)
              ),
            ),
          ],
        ),
      )
    );
  }
}
*/

