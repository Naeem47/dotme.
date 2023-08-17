import 'package:dot_me/View/Screen/Auth_Screen/Ragister3.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RagisterScreen2 extends StatefulWidget {
  const RagisterScreen2({super.key});

  @override
  State<RagisterScreen2> createState() => _RagisterScreen2State();
}

class _RagisterScreen2State extends State<RagisterScreen2> {
  TextEditingController companyNameControllor = TextEditingController();
  TextEditingController addressControllor = TextEditingController();
  TextEditingController numberControllor = TextEditingController();
  TextEditingController countryControllor = TextEditingController();
  TextEditingController companydoingControllor = TextEditingController();

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
                          text: 'Erzähl uns etwas\nüber deine Firma!',
                          fontsize: 49,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        10.verticalSpace,
                        MyTextField(
                          prefixIcon: 'assets/homeicon.png',
                          hintText: 'Placeholder',
                          controller: companyNameControllor,
                          labeltext: 'Company Name',
                        ),
                        3.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MyTextField(
                              prefixIcon: 'assets/personicon.png',
                              width: 300,
                              hintText: 'Placeholder',
                              controller: addressControllor,
                              labeltext: 'Adress',
                            ),
                            2.horizontalSpace,
                            MyTextField(
                              prefixIcon: 'assets/personicon.png',
                              width: 190,
                              hintText: 'Placeholder',
                              controller: numberControllor,
                              labeltext: 'Number',
                            ),
                          ],
                        ),
                        6.verticalSpace,
                        MyTextField(
                          prefixIcon: 'assets/User.png',
                          hintText: 'Placeholder',
                          controller: countryControllor,
                          labeltext: 'Country',
                        ),
                        3.verticalSpace,
                        MyTextField(
                          prefixIcon: 'assets/homeicon.png',
                          hintText: 'Placeholder',
                          controller: companydoingControllor,
                          labeltext: 'What are your Company doing?',
                        ),
                        3.verticalSpace,
                        35.verticalSpace,
                        MyButton(
                          buttontext: 'Weiter',
                          onPressed: () {
                            Get.to(() => const RagisterScreen3());
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
                            value: 0.4,
                            backgroundColor: Colors.black.withOpacity(.10),
                            color: const Color(0xff1F71FF),
                          ),
                        )
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
