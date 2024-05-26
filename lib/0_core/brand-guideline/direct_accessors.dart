import 'package:flutter/cupertino.dart';

abstract class AssetAccessor {
  static backgroundImage(
          {double? height, double? width, BoxFit? fit, double? scale}) =>
      Image.asset(
        "assets/images/background.jpg",
        height: height,
        scale: scale,
        width: width,
        fit: fit,
      );
}
