import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';
import 'package:web_dev_sample/widgets/icon_generator.dart';

class MainSearchbarWidget extends StatelessWidget {
  const MainSearchbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 110.0.w, right: 110.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 60,
        width: double.maxFinite,
        child: Row(
          children: [
            IconGenerator(
              iconString: 'assets/images/search-light@4x.png',
              padding: EdgeInsets.only(left: 40.w),
              color: Colors.black,
            ),
            SizedBox(
              width: 25.w,
            ),
            SizedBox(
              width: 600.w,
              child: CustomText(
                'Search Venues, Artists or Passes',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                textColor: Colors.black54,
                // maxLines: 1,
              ),
            ),
            VerticalDivider(
              thickness: 1,
              color: Color(0xFFF6F4F4),
            ),
            IconGenerator(
              iconString: 'assets/images/map-pin@4x.png',
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
            ),
            SizedBox(
              width: 150.w,
              child: CustomText(
                'All Locations',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                textColor: Colors.black54,
                // maxLines: 1,
              ),
            ),
            IconGenerator(
              iconString: 'assets/images/chevron-down@4x.png',
              padding: EdgeInsets.only(left: 50.w, right: 50.w),
              color: Colors.black,
            ),
            Spacer(),
            Container(
              width: 250.w,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 2,
                  colors: [
                    Colors.blue[400]!,
                    Colors.blue[900]!,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    'Search',
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    textColor: Colors.white,
                    maxLines: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
