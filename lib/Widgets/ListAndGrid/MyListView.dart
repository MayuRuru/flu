import 'package:flupro/Widgets/ListAndGrid/Items/MyListTile.dart';
import 'package:flutter/material.dart';
import '../../Common/MyKeys.dart';
import '../../Model/Sound.dart';

class MyListView extends StatefulWidget {
  MyListView():super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: ListView.builder(
          shrinkWrap: true,
          //scrollDirection: Axis.horizontal,
          //reverse:true,
          itemCount: sounds.length,
          itemBuilder: (context, index) {
            Sound sound = this.mySounds[index];
            sounds[index];
            return Dismissible(
              direction: DismissDirection.startToEnd,
                key: ObjectKey(sound), child: MyListTile(sound, index, remove),
            onDismissed: (direction){
                remove(sound);
            });
          }),
    );
  }

  update(Sound sound, int index){
    setState((){
      mySounds[index]=sound;
    });
  }

  add(Sound sound){
    setState((){
      mySounds.add(sound);
    });
  }
  remove(Sound sound){
    setState((){
      mySounds.remove(sound);
    });
  }

}


