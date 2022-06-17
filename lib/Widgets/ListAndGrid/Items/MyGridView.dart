import 'package:flupro/Widgets/ListAndGrid/Items/MyCard.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  //const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
      ),
      physics: NeverScrollableScrollPhysics(), //desactivar un scroll secundario
      itemCount: 30, // cuantos elementos creamos
      itemBuilder: (context, index)=>MyCard(),
    );
  }
}
