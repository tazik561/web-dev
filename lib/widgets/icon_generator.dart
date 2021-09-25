import 'package:flutter/material.dart';

class IconGenerator extends StatelessWidget {
  final String iconString;
  final Color? color;
  final EdgeInsets? padding;
  const IconGenerator(
      {Key? key, required this.iconString, this.padding, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      height: mediaSize.height * .02,
      child: Image.asset(
        iconString,
        color: color,
      ),
    );
  }
}
