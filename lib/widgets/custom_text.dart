import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/utils/font_config.dart';

class CustomText extends StatelessWidget {
  final title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign? textAlign;
  final double? height;
  final bool underline;
  final String fontFamily;
  final int maxLines;

  CustomText(this.title,
      {this.fontSize = 18,
      this.fontWeight = FontWeight.w400,
      this.textColor = Colors.white,
      this.textAlign,
      this.underline = false,
      this.maxLines = 2,
      this.height,
      this.fontFamily = 'Lato'});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title.toString(),
        textAlign: textAlign,
        maxLines: maxLines,
        presetFontSizes: [fontSize, 12, 10],
        style: TextStyle(
            fontWeight: fontWeight,
            // overflow: TextOverflow.ellipsis,
            // fontSize: FontConfig.getAdaptiveFortSize(fontSize: fontSize),
            fontSize: fontSize,
            color: textColor,
            height: height,
            fontFamily: fontFamily,
            decoration: underline ? TextDecoration.underline : null));
  }
}
