import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({
    Key? key,
    required this.fem,
    required this.image,
    required this.sizedBoxWidth,
    required this.sizedBoxheight,
    required this.imageWidth,
    required this.imageheight,
  }) : super(key: key);

  final double fem;
  final String image;
  final double sizedBoxWidth;
  final double sizedBoxheight;
  final double imageWidth;
  final double imageheight;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: sizedBoxWidth,
        height: sizedBoxheight,
        child: Image.asset(
          image,
          width: imageWidth,
          height: imageheight,
        ),
      ),
    );
  }
}
