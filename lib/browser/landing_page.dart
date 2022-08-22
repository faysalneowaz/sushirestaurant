import 'package:flutter/material.dart';
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
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title Here",
                        style: Theme.of(context).textTheme.headline1!.merge(
                              const TextStyle(
                                color: ConstantComponent.csTextColor,
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Vivamus lacinia odio vitae \nvestibulum vestibulum.",
                        style: Theme.of(context).textTheme.headline6!.merge(
                              const TextStyle(
                                  color: ConstantComponent.csTextColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 26),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
