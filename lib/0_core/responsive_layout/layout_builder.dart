import 'package:flutter/material.dart';

class OrientationBuilder extends StatelessWidget {
  const OrientationBuilder(
      {super.key, required this.portrait, required this.landScape});
  final Widget portrait;
  final Widget landScape;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      return landScape;
    }
    return portrait;
  }
}
