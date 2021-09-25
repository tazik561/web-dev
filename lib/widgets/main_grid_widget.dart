import 'package:flutter/material.dart';
import 'package:web_dev_sample/data/grid_model.dart';
import 'package:web_dev_sample/widgets/app_button_widget.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';

class MainGridWidget extends StatelessWidget {
  final GridModel model;
  const MainGridWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4.0,
      color: Colors.red,
      shadowColor: Colors.black38,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        // height: mediaSize.height * .09,
        // width: mediaSize.width * .09,
        color: Color(0xff1e2e42),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                color: Colors.red,
                child: Image.asset(
                  model.imgHeder,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 5),
                child: CustomText(
                  model.title,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  textColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: CustomText(
                          model.subTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          textColor: Color(0xff7b8390),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: AppButtonWidget(
                buttonTitle: 'From\$99',
                width: mediaSize.width * .08,
                fontSize: 16,
                height: mediaSize.height * .04,
              ),
            )
          ],
        ),
      ),
    );
  }
}
