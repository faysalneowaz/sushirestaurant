import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText extends StatelessWidget {
  String text;
  double textSize;
  Color textColor;
  FontWeight? textWeight;
  BodyText({
    Key? key,
    required this.text,
    required this.textSize,
    required this.textColor,
    this.textWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}
