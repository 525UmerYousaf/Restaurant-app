import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  //  Since we want to assign color for our Color.dart file
  //  So we remove final from the one given below:
  Color color;
  final String text;
  double size;
  double height;
  SmallText({
    //  Now, in this file we are not going to call the
    //  property from the color.dart but instead declare property
    //  of color with the help of hexadecimal code because we cannot
    //  store the default color value inside the variable to use as defult afterward.
    this.color = const Color(0xFFccc7c5),
    super.key,
    required this.text,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}
