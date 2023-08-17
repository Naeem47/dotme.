import 'package:dot_me/View/Screen/Auth_Screen/Ragister2.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RagisterScreen extends StatefulWidget {
  const RagisterScreen({super.key});

  @override
  State<RagisterScreen> createState() => _RagisterScreenState();
}

class _RagisterScreenState extends State<RagisterScreen> {
  TextEditingController nameControllor = TextEditingController();
  TextEditingController emailControllor = TextEditingController();
  TextEditingController passwordControllor = TextEditingController();
  TextEditingController numberControllor = TextEditingController();

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                color: const Color(0xff1F71FF),
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Get.back();
                                }),
                            MyText(
                              text: 'Zurück',
                              fontsize: 16,
                              fontweight: FontWeight.w800,
                              fontcolor: Color(0xff1F71FF),
                            )
                          ],
                        ),
                        MyText(
                          text: 'Neu hier?\nRegistrier dich jetzt',
                          fontsize: 49,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        10.verticalSpace,
                        MyTextField(
                          hintText: 'Placeholder',
                          prefixIcon: 'assets/personicon.png',
                          controller: nameControllor,
                          labeltext: 'Dein Name',
                        ),
                        3.verticalSpace,
                        MyTextField(
                          hintText: 'Placeholder',
                          prefixIcon: 'assets/massegebox.png',
                          controller: emailControllor,
                          labeltext: 'E-Mail-Adresse',
                        ),
                        3.verticalSpace,
                        MyTextField(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_outlined)),
                          hintText: 'Placeholder',
                          controller: passwordControllor,
                          prefixIcon: 'assets/lockicon.png',
                          labeltext: 'Passwort',
                        ),
                        3.verticalSpace,
                        MyTextField(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_outlined)),
                          hintText: 'Placeholder',
                          controller: numberControllor,
                          prefixIcon: 'assets/lockicon.png',
                          labeltext: 'Passwort wiederholen',
                        ),
                        3.verticalSpace,
                        MyTextField(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down)),
                          hintText: '0049 XXXXXXXXXX',
                          controller: nameControllor,
                          prefixIcon: 'assets/User.png',
                          labeltext: 'Deine Telefonnummer',
                        ),
                        3.verticalSpace,
                        MyText(
                          text: 'Du hast dein Passwort vergessen?',
                          fontsize: 10,
                          fontweight: FontWeight.w800,
                          fontcolor: const Color(0xff1F71FF),
                        ),
                        3.verticalSpace,
                        20.verticalSpace,
                        MyButton(
                          buttontext: 'Weiter',
                          onPressed: () {
                            Get.to(() => RagisterScreen2());
                          },
                          width: MediaQuery.of(context).size.width / 3,
                          radius: 8,
                        ),
                        15.verticalSpace,
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: MediaQuery.of(context).size.width / 3,
                          child: LinearProgressIndicator(
                            minHeight: 10,
                            value: 0.2,
                            backgroundColor: Colors.black.withOpacity(.10),
                            color: const Color(0xff1F71FF),
                          ),
                        ),
                        20.verticalSpace,
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
