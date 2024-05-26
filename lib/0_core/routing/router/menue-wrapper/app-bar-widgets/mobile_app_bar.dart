import 'package:flutter/material.dart';
class MobileAppBar extends StatelessWidget {
  String? title;
   MobileAppBar({Key? key,this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.green,
      width: deviceWidth,
      height: deviceHeight * 0.2,
      child: Text(title??'not defined'),
    );
  }
}