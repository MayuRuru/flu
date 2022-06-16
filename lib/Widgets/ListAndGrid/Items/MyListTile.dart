import 'package:flupro/Common/MyKeys.dart';
import 'package:flutter/material.dart';
import '../../../Model/Sound.dart';
typedef VoidCallbackParam(Sound sound);

class MyListTile extends StatelessWidget {
  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;
  MyListTile(this.sound, this.index, this.voidCallbackParam);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(sound.title),
      subtitle: Text(sound.singer),
      trailing: InkWell(
        onTap: ()=>myListViewKey.currentState?.remove(sound),
          child: Icon(Icons.close)),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: ()=> myListViewKey.currentState?.update(sound..title="update title", index),
    );
  }
}
