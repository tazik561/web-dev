import 'package:flutter/material.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';

class FeatureWidget extends StatelessWidget {
  final String iconString;
  final String tile;
  final String subTitle;
  const FeatureWidget({
    Key? key,
    required this.iconString,
    required this.subTitle,
    required this.tile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Container(
      // color: Colors.green,
      width: mediaSize.width * .2,
      height: mediaSize.height * .09,
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              iconString,
              scale: 6,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  tile,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  textColor: Colors.white,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        child: CustomText(
                          subTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          textColor: Color(0xff7b8390),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
