import 'package:flupro/Values/Sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoverContainer extends StatelessWidget {
  String image;

  CoverContainer(this.image);

  @override
  Widget build(BuildContext context) {
  
    return InkWell(
      onTap: () {
        print("onTap");
      },
      child: Container(
        width: coverWidth,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                this.image,
              )),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(4,5)
            )
          ],
        ),
      ),
    );
  }
}