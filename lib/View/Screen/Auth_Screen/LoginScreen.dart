import 'package:dot_me/View/Screen/Auth_Screen/RagisterScreen.dart';
import 'package:dot_me/View/Utils/Responsive/Risponsive.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameControllor = TextEditingController();
  TextEditingController emailControllor = TextEditingController();
  TextEditingController passwordControllor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/dotmelogotext.png',
                            height: 40,
                            width: 120,
                          ),
                          MyText(
                            text: 'BUSINESS APP',
                            fontsize: 10,
                            fontweight: FontWeight.w900,
                            fontcolor: Color(0xff1F71FF),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Hallo. Schön,\ndass du hier bist!',
                            fontsize: 49,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          ),
                          MyTextField(
                            // child: Image.asset('assets/profileperson.png'),
                            child: IconButton(
                              icon: Icon(Icons.arrow_downward),
                              onPressed: () {},
                            ),
                            prefixIcon: 'assets/profileperson.png',

                            hintText: 'Placeholder',
                            controller: nameControllor,
                            labeltext: 'Profile',
                          ),
                          5.verticalSpace,
                          MyTextField(
                            hintText: 'Placeholder',
                            prefixIcon: 'assets/massegebox.png',
                            controller: emailControllor,
                            labeltext: 'E-Mail-Adresse',
                          ),
                          5.verticalSpace,
                          MyTextField(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_outlined)),
                            prefixIcon: 'assets/lockicon.png',
                            hintText: 'Placeholder',
                            controller: passwordControllor,
                            labeltext: 'Passwort',
                          ),
                          7.verticalSpace,
                          MyText(
                            text: 'Du hast dein Passwort vergessen?',
                            fontsize: 10,
                            fontweight: FontWeight.w800,
                            fontcolor: const Color(0xff1F71FF),
                          ),
                          40.verticalSpace,
                          MyButton(
                            buttontext: 'Einloggen',
                            onPressed: () {
                              Get.to(() => const RagisterScreen());
                            },
                            width: MediaQuery.of(context).size.width / 3,
                            radius: 8,
                          ),
                          15.verticalSpace,
                          MyButton(
                            buttontext: 'Registrieren',
                            onPressed: () {},
                            backgroundcolor: Colors.black,
                            width: MediaQuery.of(context).size.width / 3,
                            radius: 8,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'dot.me GmbH',
                            fontsize: 10,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          ),
                          3.verticalSpace,
                          MyText(
                            text:
                                'Privacy Policy Terms of use Legal InformationSitemap Help Center About us',
                            fontsize: 10,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (!Responsive.isMobile(context))
            Expanded(
              child: Container(
                height: double.infinity,
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/faceWashPic.png'),
                      fit: BoxFit.cover),
                ),
              ),
            )
        ]),
      ),
    );
  }
}
