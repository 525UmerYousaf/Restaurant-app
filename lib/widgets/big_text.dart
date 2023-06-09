import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  //  Since we want to assign color for our Color.dart file
  //  So we remove final from the one given below:
  Color color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({
    //  Now, in this file we are not going to call the
    //  property from the color.dart but instead declare property
    //  of color with the help of hexadecimal code because we cannot
    //  store the default color value inside the variable to use as defult afterward.
    this.color = const Color(0xFF332d2b),
    super.key,
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: size),
    );
  }
}
