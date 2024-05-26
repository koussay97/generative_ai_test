import 'package:flutter/material.dart';
class TabletAppBar extends StatelessWidget {
  String?title;
   TabletAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.red,
      width: deviceWidth * (18 / 22),
      height: deviceHeight * 0.1,
      child: Text(title??'not defined'),
    );
  }
}