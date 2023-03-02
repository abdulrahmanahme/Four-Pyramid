import 'package:flutter/material.dart';
import 'package:myapp/core/icon_app.dart';
import 'package:myapp/screens/screen_three.dart';

import 'package:myapp/widgets/button_widget.dart';
import 'package:myapp/widgets/image_widget.dart';
import 'package:myapp/widgets/text_widget.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 926 * fem,
            decoration: BoxDecoration(
              color:const Color(0xff191919),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 101 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 428 * fem,
                      height: 825 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color:const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 55 * fem,
                  top: 690 * fem,
                  child: InkWell(
                    onTap: (() {
                       Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>const ScreenThree()));
                    }),
                    child: Button(
                        radius: 8 * fem,
                        height: 58 * fem,
                        width: 319 * fem,
                        colorText: Color(0xffffffff),
                        fontheight: 1.2125 * ffem / fem,
                        fem: fem,
                        fontWeight: FontWeight.w700,
                        fontSize: 16 * ffem,
                        name: 'Place Camera Code',
                        ffem: ffem),
                  ),
                ),
                Positioned(
                  left: 166 * fem,
                  top: 587 * fem,
                  child: TextWidget(
                      fem: fem,
                      ffem: ffem,
                      name: 'Scanning Code...',
                      sizedBoxWidth: 96 * fem,
                      sizedBoxheight: 15 * fem,
                      fontSize: 12 * ffem,
                      fontheight: 1.2125 * ffem / fem,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                //
                Positioned(
                  left: 165 * fem,
                  top: 644.4745788574 * fem,
                  child: Imagewidget(
                      fem: fem,
                      image: AppIcons.group5,
                      sizedBoxWidth: 98 * fem,
                      sizedBoxheight: 20 * fem,
                      imageWidth: 98 * fem,
                      imageheight: 20 * fem),
                ),

                Positioned(
                  left: 160 * fem,
                  top: 228 * fem,
                  child: TextWidget(
                    fem: fem,
                    ffem: ffem,
                    name: 'Scan OR code',
                    sizedBoxWidth: 109 * fem,
                    sizedBoxheight: 20 * fem,
                    textAlign: TextAlign.center,
                    fontSize: 16 * ffem,
                    fontheight: 1.2125 * ffem / fem,
                    fontWeight: FontWeight.w800,
                    color:const Color(0xff000000),
                  ),
                ),

                Positioned(
                  left: 83 * fem,
                  top: 281.5 * fem,
                  child: Center(
                    child: TextWidget(
                      fem: fem,
                      ffem: ffem,
                      name:
                          'Place qr code inside the frame to scan please\navoid shake to get results quickly',
                      sizedBoxWidth: 261 * fem,
                      sizedBoxheight: 30 * fem,
                      textAlign: TextAlign.center,
                      fontSize: 12* fem,
                      fontheight: 1.2129 * ffem / fem,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffb8b8b8),
                    ),
                  ),
                ),

                Positioned(
                  left: 179 * fem,
                  top: 127 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 70 * fem,
                      height: 5 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5 * fem),
                          color:const Color(0xffd9d9d9),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 366 * fem,
                    top: 132 * fem,
                    child: Imagewidget(
                        fem: fem,
                        image: AppIcons.group3,
                        sizedBoxWidth: 41 * fem,
                        sizedBoxheight: 43 * fem,
                        imageWidth: 41 * fem,
                        imageheight: 43 * fem)),
                Positioned(
                    left: 124 * fem,
                    top: 390 * fem,
                    child: Imagewidget(
                        fem: fem,
                        image: AppIcons.group4,
                        sizedBoxWidth: 180 * fem,
                        sizedBoxheight: 180 * fem,
                        imageWidth: 180 * fem,
                        imageheight: 180 * fem)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
