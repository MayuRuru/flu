import 'package:flupro/Common/MyKeys.dart';
import 'package:flutter/material.dart';
//import 'package:my_first_app/Common/MyKeys.dart';
//import 'package:my_first_app/Common/MyRouters.dart';

import '../../../Model/Sound.dart';

typedef VoidCallbackParam(Sound sound);

class SoundListTile extends StatelessWidget {
  Sound sound;
  int index;

  SoundListTile(this.sound, this.index);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(
        sound.title,
      ),
      subtitle: Text(
        sound.singer,
      ),

      trailing: InkWell(
        onTap: ()=> myListViewKey.currentState?.remove(sound),
        child: PopupMenuButton(
          icon: IconTheme(data:
            Theme.of(context).accentIconTheme,
          child: Icon(Icons.more),),
        ),
      ),

      leading: IconTheme(data:
      Theme.of(context).primaryIconTheme,
          child:Icon(
        Icons.play_circle_fill,
      )),
      onTap: () {
        Navigator.pushNamed(context, ROUTE_NOW_PLAYING,arguments: sound);
      },
      onLongPress: () {
        print("ListTile onLongPress");
      },
    );
  }
}