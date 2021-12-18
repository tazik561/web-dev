import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/data/footer_item_model.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';

class FooterItemWidgets extends StatelessWidget {
  final FooterItemModel models;
  const FooterItemWidgets({Key? key, required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 300,
      child: Column(
        children: [
          CustomText(
            models.title,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            textColor: Colors.white,
            maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),
          ...models.subtitles.map((e) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomText(
                      e,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      textColor: Color(0xff828a91),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
