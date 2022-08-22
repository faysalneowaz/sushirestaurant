// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sushirestaurant/constant/util.dart';

class TopBarContent extends StatefulWidget {
  const TopBarContent({Key? key}) : super(key: key);

  @override
  State<TopBarContent> createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstantComponent.csMainColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 40,
                    width: 40,
                  ),
                  const Text(
                    "Sushi",
                    style: TextStyle(
                      color: ConstantComponent.csTextColor,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  MenuButton(
                    text: "Home",
                    press: () {},
                  ),
                  MenuButton(
                    text: "Product",
                    press: () {},
                  ),
                  MenuButton(
                    text: "Promo",
                    press: () {},
                  ),
                  MenuButton(
                    text: "About",
                    press: () {},
                  ),
                  MenuButton(
                    text: "Contact",
                    press: () {},
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                      color: ConstantComponent.csTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  String text;
  Function() press;
  MenuButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          right: 50,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: ConstantComponent.csTextColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
