import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/core/icon_app.dart';
import 'package:myapp/core/utils.dart';
import 'package:myapp/screens/screen_two.dart';
import 'package:myapp/widgets/button_widget.dart';
import 'package:myapp/widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _dropdownFormKey = GlobalKey<FormState>();
  var controllerPhone = TextEditingController();
  var controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
     SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _dropdownFormKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 586 * fem,
              height: 300 * fem,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    left: -10 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 445 * fem,
                        height: 200 * fem,
                        child: Image.asset(
                          AppIcons.ellipse,
                          width: 445 * fem,
                          height: 406 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100 * fem,
                    top: -8 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 445 * fem,
                        height: 200 * fem,
                        child: Image.asset(
                          AppIcons.ellipse2,
                          width: 445 * fem,
                          height: 406 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 181 * fem,
                    top: 126 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 65 * fem,
                        height: 30 * fem,
                        child: Text(
                          'Login',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            defaultFormField(
              controller: controllerPhone,
              hintText: 'Enter your phone',
              type: TextInputType.emailAddress,
              edgeInsetsGeometry: EdgeInsets.symmetric(vertical: 25 * fem),
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone';
                }
                return null;
              },
            ),
            defaultFormField(
              controller: controllerPassword,
              hintText: 'Password',
              edgeInsetsGeometry: EdgeInsets.symmetric(vertical: 25 * fem),
              suffixIcon: const Icon(Icons.visibility),
              type: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),

            Padding(
              padding: EdgeInsets.only(right: 20 * fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.7142857143 * ffem / fem,
                      color: Color(0xff757575),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40 * ffem,
            ),
            InkWell(
              onTap: (() {
                if (_dropdownFormKey.currentState!.validate()) {}
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>const ScreenTwo()));
              }),
              child: Button(
                  radius: 8 * fem,
                  height: 68 * fem,
                  width: 330 * fem,
                  colorText:const Color(0xffffffff),
                  fontheight: 1.2125 * ffem / fem,
                  fem: fem,
                  fontWeight: FontWeight.w700,
                  fontSize: 16 * ffem,
                  name: 'Login',
                  ffem: ffem),
            ),
          ]),
        ),
      ),
    );
  }
}
