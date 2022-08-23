// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sushirestaurant/browser/content/body_text.dart';
import 'package:sushirestaurant/browser/content/button_design.dart';
import 'package:sushirestaurant/browser/content/headline_text.dart';
import 'package:sushirestaurant/browser/content/topbar_menu.dart';
import 'package:sushirestaurant/constant/util.dart';

class WebLandingPage extends StatefulWidget {
  const WebLandingPage({Key? key}) : super(key: key);

  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

class _WebLandingPageState extends State<WebLandingPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70.0),
        child: TopBarContent(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: ConstantComponent.csOpacityColor.withOpacity(0.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/topbannerimage.png"),
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 255, 209, 125).withOpacity(1.0),
                          BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadLineText(
                        text: "Title Here",
                        textColor: ConstantComponent.csTextColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      BodyText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Vivamus lacinia odio vitae \nvestibulum vestibulum.",
                        textSize: 18,
                        textColor: ConstantComponent.csTextColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonDesign(
                        text: "Order Now",
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //popularmenu

            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: ConstantComponent.csMainColor,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 40.0,
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeadLineText(
                              text: "Popular Menu",
                              textColor: ConstantComponent.csTextColor,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            BodyText(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia \nodio vitae vestibulum vestibulum.",
                              textColor: ConstantComponent.csTextColor,
                              textSize: 16,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MenuBuilder(
                                  menuImage: "assets/images/menu1.png",
                                  title: "Title Here",
                                  details:
                                      "Lorem ipsum dolor sit amet, con-\nsectetur adipiscing elit.",
                                ),
                                MenuBuilder(
                                  menuImage: "assets/images/menu2.png",
                                  title: "Title Here",
                                  details:
                                      "Lorem ipsum dolor sit amet, con-\nsectetur adipiscing elit.",
                                ),
                                MenuBuilder(
                                  menuImage: "assets/images/menu3.png",
                                  title: "Title Here",
                                  details:
                                      "Lorem ipsum dolor sit amet, con-\nsectetur adipiscing elit.",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  top: -11,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape1.png"),
                  ),
                ),
                Positioned(
                  bottom: 55,
                  left: -25,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape1.png"),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 155,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape3.png"),
                  ),
                ),
                Positioned(
                  left: 555,
                  top: -30,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape2.png"),
                  ),
                ),
                Positioned(
                  bottom: 125,
                  right: 55,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape3.png"),
                  ),
                ),
                Positioned(
                  bottom: 425,
                  right: -30,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset("assets/images/shape8.png"),
                  ),
                ),
              ],
            ),

            // single menuDetails
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: ConstantComponent.csOpacityColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuBuilder extends StatelessWidget {
  String menuImage;
  String title;
  String details;
  MenuBuilder({
    Key? key,
    required this.menuImage,
    required this.title,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40.0),
      child: Column(
        children: [
          Container(
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
              image: DecorationImage(
                image: AssetImage(
                  menuImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          BodyText(
            text: title,
            textSize: 20,
            textColor: ConstantComponent.csTextColor,
            textWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 15.0,
          ),
          BodyText(
              text: details,
              textSize: 14,
              textColor: ConstantComponent.csTextColor),
        ],
      ),
    );
  }
}
