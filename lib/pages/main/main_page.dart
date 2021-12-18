import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dev_sample/utils/faks_data.dart';
import 'package:web_dev_sample/widgets/app_button_widget.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';
import 'package:web_dev_sample/widgets/feature_widget.dart';
import 'package:web_dev_sample/widgets/footer_item_widget.dart';
import 'package:web_dev_sample/widgets/icon_generator.dart';
import 'package:web_dev_sample/widgets/main_appbar_widget.dart';
import 'package:web_dev_sample/widgets/main_grid_widget.dart';
import 'package:web_dev_sample/widgets/main_searchbar_widget.dart';
import 'package:web_dev_sample/widgets/social_groups_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff05172c),
      extendBodyBehindAppBar: true,
      appBar: MainAppbarWidget(
        context: context,
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
              width: double.maxFinite,
              child: Stack(
                children: [
                  SizedBox(
                    height: 500,
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/HeroImage@4x.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: MainSearchbarWidget(),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: mediaSize.width * .09,
                right: mediaSize.width * .09,
                top: mediaSize.height * .07,
                bottom: 0),
            sliver: SliverToBoxAdapter(
              child: CustomText(
                'Event Ticket',
                fontWeight: FontWeight.w900,
                fontSize: 32,
                textColor: Colors.white,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: mediaSize.width * .09,
                right: mediaSize.width * .09,
                top: mediaSize.height * .03,
                bottom: mediaSize.height * .05),
            sliver: mediaSize.width < 700
                ? GridCardsWidget(
                    crossAxisCount: 2,
                  )
                : GridCardsWidget(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: mediaSize.width * .28,
                right: mediaSize.width * .28,
                top: mediaSize.height * .02,
                bottom: mediaSize.height * .18),
            sliver: SliverToBoxAdapter(
              child: AppButtonWidget(
                buttonTitle: 'See 6 More',
                buttonColor: Color(0xff1e2e42),
                width: mediaSize.width * .02,
                fontSize: 16,
                height: mediaSize.height * .05,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: mediaSize.height * .99,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (mediaSize.width > 950)
                    Container(
                        width: mediaSize.width * .4,
                        child: Row(
                          children: [
                            Expanded(child: MobileBannerWidget()),
                          ],
                        )),
                  Container(
                    width: mediaSize.width * .6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mediaSize.width * .04,
                                    bottom: 2,
                                    top: mediaSize.height * .07),
                                child: CustomText(
                                  'Own Your Night',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  textColor: Color(0xff828a91),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: CustomText(
                                  'Download the App',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 44,
                                  textColor: Colors.white,
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: SizedBox(
                                  width: mediaSize.width * .4,
                                  child: CustomText(
                                    'Skip the line, order drinks, purchcase event tickets, \nand much more all your favorite bars!',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    textColor: Color(0xff938348),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: mediaSize.height * .36,
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  FeatureWidget(
                                    iconString: 'assets/images/LineSkip@4x.png',
                                    subTitle:
                                        'LineSkip passes let you skip long lines at your favorite bars, venues, and events.',
                                    tile: 'LineSkip',
                                  ),
                                  FeatureWidget(
                                    iconString: 'assets/images/Cover@4x.png',
                                    subTitle:
                                        'Ditch the ATM! Pay with Venmo, PayPal, or credit card using the LineLeap App.',
                                    tile: 'Cover',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  FeatureWidget(
                                    iconString: 'assets/images/Drinks@4x.png',
                                    subTitle:
                                        'Order your drinks right from your phone. No more splitting tabs or soggy receipts!',
                                    tile: 'Drinks',
                                  ),
                                  FeatureWidget(
                                    iconString: 'assets/images/Events@4x.png',
                                    subTitle:
                                        'Get tickerts and VIP access to dope concerts you won’t find anywhere else.',
                                    tile: 'Event Tickets',
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  FeatureWidget(
                                    iconString: 'assets/images/Frame35@4x.png',
                                    subTitle:
                                        'Use LineLeap for exclusive deals on your favorite drinks!',
                                    tile: 'Exclusive Deals',
                                  ),
                                  FeatureWidget(
                                    iconString:
                                        'assets/images/Reservations@4x.png',
                                    subTitle:
                                        'Save your spot in line or grab the perfect table in seconds.',
                                    tile: 'Reservations',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/GooglePlay@4x.png',
                              scale: mediaSize.width < 630 ? 7 : 4,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/AppStore@4x.png',
                              scale: mediaSize.width < 630 ? 7 : 4,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                top: mediaSize.height * .1, bottom: mediaSize.height * .08),
            sliver: SliverToBoxAdapter(
              child: mediaSize.width > 800
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialGroupsWidget(),
                        FooterItemWidgets(
                          models: makeCompanyItem(),
                        ),
                        FooterItemWidgets(
                          models: makeCustomersItem(),
                        ),
                        FooterItemWidgets(
                          models: makeVenueOwnersItem(),
                        ),
                      ],
                    )
                  : Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialGroupsWidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FooterItemWidgets(
                              models: makeCompanyItem(),
                            ),
                            FooterItemWidgets(
                              models: makeCustomersItem(),
                            ),
                            FooterItemWidgets(
                              models: makeVenueOwnersItem(),
                            ),
                          ],
                        )
                      ],
                    ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 50,
              color: Color(0xff1E2E42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: mediaSize.height * .19),
                      child: CustomText(
                        '© LineLeap 2020',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        textColor: Color(0xff828a91),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: CustomText(
                      'Privacy Policy',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      textColor: Color(0xff828a91),
                      maxLines: 1,
                    ),
                  ),
                  Expanded(
                    child: CustomText(
                      'Terms & Conditions',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      textColor: Color(0xff828a91),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GridCardsWidget extends StatelessWidget {
  const GridCardsWidget({Key? key, this.crossAxisCount = 3}) : super(key: key);

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return MainGridWidget(
          model: getGridModels()[index],
        );
      }, childCount: 6),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 5 / 7,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
      ),
    );
  }
}

class MobileBannerWidget extends StatelessWidget {
  const MobileBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Positioned(
            left: -100,
            bottom: 0,
            top: 20,
            child: Image.asset(
              'assets/images/Blob@4x.png',
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * .43,
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Image.asset(
              'assets/images/Phone@4x.png',
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * .4,
            ),
          ),
        ),
      ],
    );
  }
}
