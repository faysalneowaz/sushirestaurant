import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadLineText extends StatelessWidget {
  String text;
  Color textColor;

  HeadLineText({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        color: textColor,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.8,
        fontSize: 42,
      ),

      // Theme.of(context).textTheme.headline2!.merge(
      //       TextStyle(
      //         color: textColor,
      //         fontWeight: FontWeight.w800,
      //       ),
      // ),
    );
  }
}
