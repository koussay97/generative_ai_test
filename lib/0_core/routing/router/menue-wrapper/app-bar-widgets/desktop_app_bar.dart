import 'package:flutter/material.dart';
class DesktopAppBar extends StatelessWidget {
  String? title;
   DesktopAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.yellow,
      width: deviceWidth * (18 / 22),
      height: deviceHeight * 0.1,
      child: Text(title??'not defined'),
    );
  }
}