import 'package:flupro/Values/Sizes.dart';
import 'package:flutter/material.dart';
import '../../../Model/Sound.dart';
import '../../../Common/MyKeys.dart';
import 'CoverContainer.dart';
import 'SoundListTile.dart';

class PlaylistView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlaylistViewState();
}

class PlaylistViewState extends State<PlaylistView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
                height: coverHeight,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //  physics: NeverScrollableScrollPhysics(),
                    itemCount: sounds.length,
                    itemBuilder: (context, index) {
                      return CoverContainer(this.mySounds[index].cover);
                    })),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: sounds.length,
                itemBuilder: (context, index) {
                  Sound sound = this.mySounds[index];
                  return SoundListTile(sound, index);
                })
          ],
        ));
  }
}