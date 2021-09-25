import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign? textAlign;
  final double? height;
  final bool underline;
  final String fontFamily;

  CustomText(this.title,
      {this.fontSize = 18,
      this.fontWeight = FontWeight.w400,
      this.textColor = Colors.white,
      this.textAlign,
      this.underline = false,
      this.height,
      this.fontFamily = 'Lato'});

  @override
  Widget build(BuildContext context) {
    return Text(title.toString(),
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: textColor,
            height: height,
            fontFamily: fontFamily,
            decoration: underline ? TextDecoration.underline : null));
  }
}
