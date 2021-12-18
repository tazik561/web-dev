// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/widgets/app_button_widget.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';

class MainAppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  final BuildContext context;
  MainAppbarWidget({
    Key? key,
    required this.context,
  }) : super(key: key);
  @override
  Size get preferredSize => Size(MediaQuery.of(context).size.width, 1000);
  @override
  State<MainAppbarWidget> createState() => _MainAppbarWidgetState();
}

class _MainAppbarWidgetState extends State<MainAppbarWidget> {
  ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    print(mediaSize);
    return ValueListenableBuilder<bool>(
      valueListenable: isExpanded,
      builder: (context, value, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 1920.0.w,
        height: value ? 110 : 80,
        color: Color(0xff05172c).withOpacity(0.7),
        padding: EdgeInsets.only(left: 110.0.w, right: 110.w),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.minWidth > 700) {
              return collapseWidget();
            }
            return expandedWidget();
          },
        ),
      ),
    );
  }

  Widget expandedWidget() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.w,
                  height: 40,
                  child: Image.asset(
                    'assets/images/Logo@4x.png',
                  ),
                ),
                SizedBox(
                  width: 80.w,
                ),
                AppButtonWidget(
                  width: 200.w,
                  height: 42,
                  buttonTitle: 'Download the App',
                ),
                Spacer(),
                InkWell(
                  onTap: () => isExpanded.value = !isExpanded.value,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedOpacity(
            opacity: isExpanded.value ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 300.w,
                    height: 40,
                    child: Center(
                      child: CustomText(
                        'Brand Ambassadors',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 230.w,
                    height: 40,
                    child: Center(
                      child: CustomText(
                        'Venue Owners',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 160.w,
                    height: 40,
                    child: Center(
                      child: CustomText(
                        'By Passes',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 50.w,
                  ),
                  Container(
                    // width: 310.w,
                    height: 24.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/MyAccount@4x.png',
                          width: 50.w,
                          height: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 195.w,
                          height: 24,
                          child: CustomText(
                            'My Account',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget collapseWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 150.w,
          height: 40,
          child: Image.asset(
            'assets/images/Logo@4x.png',
          ),
        ),
        CustomText(
          'Brand Ambassadors',
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          'Venue Owners',
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          'By Passes',
          fontWeight: FontWeight.bold,
        ),
        Icon(
          Icons.search_outlined,
          color: Colors.white,
          size: 25,
        ),
        AppButtonWidget(
          width: 174.w,
          height: 42,
          buttonTitle: 'Download the App',
        ),
        Container(
          // width: 160.0.w,
          height: 24.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/MyAccount@4x.png',
                width: 24.w,
                height: 24,
              ),
              SizedBox(
                width: 8,
              ),
              CustomText(
                'My Account',
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        )
      ],
    );
  }
}
