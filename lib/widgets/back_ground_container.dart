import 'package:flutter/material.dart';

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({
    Key? key,
    required this.fem,
    required this.raduis,
    required this.sizedBoxWidth,
    required this.sizedBoxheight,
    required this.color,
  }) : super(key: key);

  final double fem;
  final double sizedBoxWidth;
  final double sizedBoxheight;
  final Color color;
  final double raduis;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: sizedBoxWidth,
        height: sizedBoxheight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(raduis),
            color: color,
          ),
        ),
      ),
    );
  }
}
