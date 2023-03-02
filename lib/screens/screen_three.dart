import 'package:flutter/material.dart';
import 'package:myapp/core/icon_app.dart';
import 'package:myapp/widgets/back_ground_container.dart';
import 'package:myapp/widgets/button_widget.dart';
import 'package:myapp/widgets/container_widget.dart';
import 'package:myapp/widgets/image_widget.dart';
import 'package:myapp/widgets/text_widget.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 926 * fem,
            decoration: BoxDecoration(
              color:const Color(0xffffdada),
              borderRadius: BorderRadius.circular(30 * fem),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: BackGroundContainer(
                    fem: fem,
                    raduis: 30 * fem,
                    sizedBoxWidth: 428 * fem,
                    sizedBoxheight: 203 * fem,
                    color:const Color(0xff191919),
                  ),
                ),
                Positioned(
                  left: 0 * fem,
                  top: 101 * fem,
                  child: BackGroundContainer(
                    fem: fem,
                    raduis: 30 * fem,
                    sizedBoxWidth: 428 * fem,
                    sizedBoxheight: 825 * fem,
                    color:const Color(0xffffffff),
                  ),
                ),
                Positioned(
                  left: 150 * fem,
                  top: 228 * fem,
                  child: TextWidget(
                    fem: fem,
                    ffem: ffem,
                    name: 'Scanning Result',
                    sizedBoxWidth: 127 * fem,
                    sizedBoxheight: 20 * fem,
                    textAlign: TextAlign.center,
                    fontSize: 16 * ffem,
                    fontheight: 1.2125 * ffem / fem,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000),
                  ),
                ),
                Positioned(
                  left: 85 * fem,
                  top: 274.5 * fem,
                  child: Center(
                    child: TextWidget(
                      fem: fem,
                      ffem: ffem,
                      name:
                          'Proreader will Keep your last 10 days history \nto keep your all scared history please \npurched our pro package',
                      sizedBoxWidth: 257 * fem,
                      sizedBoxheight: 50 * fem,
                      textAlign: TextAlign.center,
                      fontSize: 12 * ffem,
                      fontheight: 1.2125 * ffem / fem,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb8b8b8),
                    ),
                  ),
                ),
                Positioned(
                  left: 179 * fem,
                  top: 127 * fem,
                  child: BackGroundContainer(
                    fem: fem,
                    raduis: 5 * fem,
                    sizedBoxWidth: 70 * fem,
                    sizedBoxheight: 5 * fem,
                    color:const Color(0xffd9d9d9),
                  ),
                ),
                Positioned(
                  left: 366 * fem,
                  top: 132 * fem,
                  child: Imagewidget(
                      fem: fem,
                      image:AppIcons.group1,
                      sizedBoxWidth: 41 * fem,
                      sizedBoxheight: 43 * fem,
                      imageWidth: 41 * fem,
                      imageheight: 43 * fem),
                ),
                Positioned(
                  left: 179 * fem,
                  top: 127 * fem,
                  child: BackGroundContainer(
                    fem: fem,
                    raduis: 5 * fem,
                    sizedBoxWidth: 70 * fem,
                    sizedBoxheight: 5 * fem,
                    color:const Color(0xffd9d9d9),
                  ),
                ),
                Positioned(
                  left: 61 * fem,
                  top: 399 * fem,
                  child: ContainerWidget(fem: fem, ffem: ffem),
                ),
                Positioned(
                  left: 61 * fem,
                  top: 488 * fem,
                  child: ContainerWidget(fem: fem, ffem: ffem),
                ),
                Positioned(
                  left: 61 * fem,
                  top: 577 * fem,
                  child: ContainerWidget(fem: fem, ffem: ffem),
                ),
                Positioned(
                  left: 61 * fem,
                  top: 666 * fem,
                  child: ContainerWidget(fem: fem, ffem: ffem),
                ),
                Positioned(
                  left: 61 * fem,
                  top: 666 * fem,
                  child: ContainerWidget(fem: fem, ffem: ffem),
                ),
                Positioned(
                  left: 55 * fem,
                  top: 782 * fem,
                  child: Button(
                      radius: 8 * fem,
                      height: 58 * fem,
                      width: 319 * fem,
                      colorText: const Color(0xffffffff),
                      fontheight: 1.2125 * ffem / fem,
                      fem: fem,
                      fontWeight: FontWeight.w700,
                      fontSize: 16 * ffem,
                      name: 'Send',
                      ffem: ffem),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
