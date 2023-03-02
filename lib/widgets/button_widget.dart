import 'package:flutter/material.dart';
import 'package:myapp/core/utils.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.radius,
    required this.height,
    required this.width,
    required this.fem,
    required this.name,
    required this.ffem,
    required this.fontSize,
    required this.fontheight,
    required this.fontWeight,
    required this.colorText,
  }) : super(key: key);

  final double fem;
  final double height;
  final double width;
  final double radius;
  final double ffem;
  final String name;
  final double fontSize;
  final double fontheight;
  final FontWeight fontWeight;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:const Color(0xfffe7d55),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Text(
          name,
          style: SafeGoogleFont(
            'Inter',
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: fontheight,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
