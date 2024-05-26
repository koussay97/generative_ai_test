import 'package:flutter/cupertino.dart';
import 'package:generative_language_test/0_core/responsive_layout/device_types.dart';

class ResponsiveData {
  final DeviceScreenType screenType;
  final DevicePlatformType platform;
  //final Orientation orientation;
  final Size screenSize;
  final Size widgetSize;

  ResponsiveData(
      {required this.screenType,
      required this.platform,
      //required this.orientation,
      required this.screenSize,
      required this.widgetSize});
  @override
  String toString() =>
      'screenType : $screenType, platform: $platform, screenSize: $screenSize, widgetSize: $widgetSize';
}
