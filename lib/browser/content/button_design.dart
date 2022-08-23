import 'package:flutter/material.dart';
import 'package:sushirestaurant/constant/util.dart';

class ButtonDesign extends StatelessWidget {
  String text;
  ButtonDesign({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: ConstantComponent.csMainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0)),
        child: Text(
          text,
          style: const TextStyle(
            color: ConstantComponent.csTextColor,
            fontSize: 18,
          ),
        ));
  }
}
