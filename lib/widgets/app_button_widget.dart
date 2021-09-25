import 'package:flutter/material.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';

class AppButtonWidget extends StatelessWidget {
  final String buttonTitle;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? buttonColor;

  const AppButtonWidget({
    Key? key,
    required this.buttonTitle,
    this.height,
    this.width,
    this.fontSize,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return SizedBox(
      width: width ?? mediaSize.width * .15,
      height: height ?? mediaSize.height * .04,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonTitle),
        style: ElevatedButton.styleFrom(
            primary: buttonColor ?? Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            textStyle: TextStyle(
                fontSize: fontSize ?? 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
