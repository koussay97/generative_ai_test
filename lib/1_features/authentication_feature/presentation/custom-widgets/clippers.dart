import 'package:flutter/material.dart';

class WavyLeftCurveEdgeClipper extends CustomClipper<Path> {
  final double movingPoint;

  WavyLeftCurveEdgeClipper({required this.movingPoint});

  @override
  Path getClip(Size size) {
    Path path = Path();

    /// draw vertical line
    path.lineTo(0, size.height * 0.8);

    // original horizontal line bottom without curve
    // path.lineTo(size.width, size.height);
    /// we will replace that line with a quadratic bezier curve

    /// define 2 control points, start / end
    var firstControlPoint = Offset(size.width * 0.25, size.height);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.8);

    var secondControlPoint =
        Offset(size.width - (size.width * 0.25), size.height * 0.6);
    var secondEndPoint = Offset(size.width, size.height * 0.8);

    /// draw 2 curves
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // draw second vertical line
    path.lineTo(size.width, size.height * 0.2);

    // original top horizontal line
    /// path.lineTo(0, 0);
    /// here we will replace this with a quadratic bezier curve
    ///
    var thirdControlPoint = Offset(size.width * 0.5, 0);
    var thirdEndPoint = Offset(0.0, size.height * .2);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WavyRightCurveEdgeClipper extends CustomClipper<Path> {
  final double movingPoint;

  const WavyRightCurveEdgeClipper({required this.movingPoint});

  @override
  Path getClip(Size size) {
    Path path = Path();

    /// draw vertical line
    path.lineTo(0, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.6);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.8);

    var secondControlPoint =
        Offset(size.width - (size.width * 0.25), size.height);
    var secondEndPoint = Offset(size.width, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height * 0.2);
    var thirdControlPoint = Offset(size.width * 0.5, 0);
    var thirdEndPoint = Offset(0.0, size.height * .2);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
