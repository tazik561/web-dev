import 'package:flutter/material.dart';
import 'package:web_dev_sample/utils/faks_data.dart';
import 'package:web_dev_sample/widgets/app_button_widget.dart';
import 'package:web_dev_sample/widgets/custom_text.dart';
import 'package:web_dev_sample/widgets/feature_widget.dart';
import 'package:web_dev_sample/widgets/footer_item_widget.dart';
import 'package:web_dev_sample/widgets/icon_generator.dart';
import 'package:web_dev_sample/widgets/main_grid_widget.dart';

import 'widgets/social_groups_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff05172c),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: mediaSize.height * .49,
              width: double.maxFinite,
              child: Stack(
                children: [
                  SizedBox(
                    height: mediaSize.height * .49,
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/HeroImage@4x.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: mediaSize.height * .08,
                    color: Colors.black45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: mediaSize.height * .028,
                          padding: EdgeInsets.only(
                              left: mediaSize.width * .09,
                              right: mediaSize.width * .09),
                          child: Image.asset(
                            'assets/images/Logo@4x.png',
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                buttonTitle: 'Download the App',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: mediaSize.width * .03,
                              right: mediaSize.width * .09),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/MyAccount@4x.png',
                                height: mediaSize.height * .02,
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: mediaSize.width * .09,
                          right: mediaSize.width * .09),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        height: mediaSize.height * .065,
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            IconGenerator(
                              //! Shearch Icon
                              iconString: 'assets/images/search-light@4x.png',
                              padding:
                                  EdgeInsets.only(left: mediaSize.width * .03),
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: CustomText(
                                'Search Venues,Artists or Passes',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                textColor: Colors.black54,
                              ),
                            ),
                            VerticalDivider(
                              thickness: 1,
                              color: Color(0xFFF6F4F4),
                            ),
                            IconGenerator(
                              //! Map Icon
                              iconString: 'assets/images/map-pin@4x.png',
                              padding: EdgeInsets.only(
                                  left: mediaSize.width * .01,
                                  right: mediaSize.width * .01),
                            ),
                            CustomText(
                              'All Locations',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              textColor: Colors.black54,
                            ),
                            IconGenerator(
                              //! Shearch Icon
                              iconString: 'assets/images/chevron-down@4x.png',
                              padding: EdgeInsets.only(
                                  left: mediaSize.width * .02,
                                  right: mediaSize.width * .01),
                              color: Colors.black,
                            ),
                            Container(
                              width: mediaSize.width * .11,
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
                                child: CustomText(
                                  'Search',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  textColor: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
            sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return MainGridWidget(
                  model: getGridModels()[index],
                );
              }, childCount: 6),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 5 / 7,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
            ),
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
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                      left: -100,
                      bottom: 0,
                      top: 20,
                      child: Image.asset('assets/images/Blob@4x.png')),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset(
                        'assets/images/Phone@4x.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      // color: Colors.red,
                      width: mediaSize.width * .5,
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
                          Container(
                            height: mediaSize.height * .36,
                            width: double.maxFinite,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    FeatureWidget(
                                      iconString:
                                          'assets/images/LineSkip@4x.png',
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
                                      iconString:
                                          'assets/images/Frame35@4x.png',
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
                            children: [
                              Image.asset(
                                'assets/images/GooglePlay@4x.png',
                                scale: 4,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                'assets/images/AppStore@4x.png',
                                scale: 4,
                              )
                            ],
                          )
                        ],
                      ),
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
              child: Row(
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
                    ),
                  ),
                  Expanded(
                    child: CustomText(
                      'Terms & Conditions',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      textColor: Color(0xff828a91),
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
