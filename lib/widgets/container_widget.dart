
import 'package:flutter/material.dart';
import 'package:myapp/core/icon_app.dart';
import 'package:myapp/core/utils.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.fem,
    required this.ffem,
  }) : super(key: key);

  final double fem;
  final double ffem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17.18*fem, 19*fem, 148.79*fem, 22.71*fem),
      width: 305*fem,
      height: 75*fem,
      decoration: BoxDecoration (
        color:const Color(0xfff4f4f4),
        borderRadius: BorderRadius.circular(11*fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.27*fem, 0*fem),
            width: 35.75*fem,
            height: 33.29*fem,
            child: Image.asset(
            AppIcons.group2,
              width: 35.75*fem,
              height: 33.29*fem,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 3.71*fem, 0*fem, 0*fem),
            child: Text(
              '7E0918FF',
              style: SafeGoogleFont (
                'Inter',
                fontSize: 14*ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125*ffem/fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}