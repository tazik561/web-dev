import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontConfig {
  // on screen resizing, for making app responsive, font size change should be limited to prevent clutters
  static const fontResizeLimit = 1.0;

  //global setting to apply font size change limiting
  static const applyLimit = true;

  static double getAdaptiveFortSize(
      {required double fontSize, bool withLimit = true}) {
    if (withLimit) {
      return fontSize.w > fontSize + fontResizeLimit
          ? fontSize + fontResizeLimit
          : fontSize.w;
    }
    return fontSize.w;
  }
}
