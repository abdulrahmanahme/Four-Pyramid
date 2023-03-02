import 'package:flutter/material.dart';
import 'package:myapp/core/utils.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.fem,
    required this.ffem,
    this.textAlign,
    required this.name,
    required this.sizedBoxWidth,
    required this.sizedBoxheight,
    required this.fontSize,
    required this.fontheight,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String name;
  final double sizedBoxWidth;
  final double sizedBoxheight;
  final double fontSize;
  final double fontheight;
  final FontWeight fontWeight;
  final Color color;

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: sizedBoxWidth,
        height: sizedBoxheight,
        child: Text(
          name,
          textAlign: textAlign,
          style: SafeGoogleFont(
            'Inter',
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: fontheight,
            color: color,
          ),
        ),
      ),
    );
  }
}
