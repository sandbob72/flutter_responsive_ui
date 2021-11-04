import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_ui/enums/device_screen_type.dart';
import 'package:flutter/widgets.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryQuery) {
  var orientation = mediaQueryQuery.orientation;

  // Fixed Devide width (changes with orientation)
  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQueryQuery.size.height;
  } else {
    deviceWidth = mediaQueryQuery.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }

  return DeviceScreenType.mobile;
}
