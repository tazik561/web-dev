import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/widgets/app_button_widget.dart';

class SocialGroupsWidget extends StatelessWidget {
  const SocialGroupsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 200,
      child: Column(
        children: [
          Image.asset(
            'assets/images/Logo@4x.png',
            scale: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/instagram(1)@4x.png',
                scale: 5,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/facebook@4x.png',
                scale: 5,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/twitter(1)@4x.png',
                scale: 5,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/tiktok@4x.png',
                scale: 5,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AppButtonWidget(buttonTitle: "Download the App")
        ],
      ),
    );
  }
}
