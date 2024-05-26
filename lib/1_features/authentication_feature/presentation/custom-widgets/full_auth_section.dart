import 'package:flutter/material.dart';

import 'auth_custom_widgets.dart';

class AuthBottomSection extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  const AuthBottomSection(
      {super.key,
      required this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.center,
          child: ClipPath(
            clipBehavior: Clip.hardEdge,
            clipper: WavyLeftCurveEdgeClipper(movingPoint: 22),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ),
          ),
        ),
        Positioned(
          top: -height * 0.08,
          child: ClipPath(
            clipBehavior: Clip.hardEdge,
            clipper: const WavyRightCurveEdgeClipper(movingPoint: 22),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
              ),
            ),
          ),
        ),
        Positioned(
          top: -height * 0.35,
          child: child,
        )
      ],
    );
  }
}
