import 'package:dot_me/View/Screen/Auth_Screen/Ragister4.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RagisterScreen3 extends StatefulWidget {
  const RagisterScreen3({super.key});

  @override
  State<RagisterScreen3> createState() => _RagisterScreen3State();
}

class _RagisterScreen3State extends State<RagisterScreen3> {
  @override
  Widget build(BuildContext context) {
    var md = MediaQuery.of(context).size;
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
                        DottedBorder(
                          color: Colors.black,
                          strokeWidth: 0.5,
                          child: Container(
                            width: md.width / 3,
                            height: md.height / 2.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyText(
                                  text: 'Dein Firmen Logo',
                                  fontsize: 25,
                                  fontweight: FontWeight.w900,
                                  fontcolor: Colors.black,
                                ),
                                5.verticalSpace,
                                MyText(
                                  text:
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et\ndolore magna aliquyam erat, sed diam voluptua.',
                                  fontsize: 12,
                                  textAlignment: TextAlign.center,
                                  fontweight: FontWeight.w400,
                                  fontcolor: Colors.black,
                                ),
                                10.verticalSpace,
                                Container(
                                  height: 36,
                                  width: 121,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.10),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(
                                      child: MyText(
                                    text: 'Datei hochladen',
                                    fontsize: 10,
                                    fontweight: FontWeight.w500,
                                    fontcolor: Colors.black,
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                        35.verticalSpace,
                        MyButton(
                          buttontext: 'Weiter',
                          onPressed: () {
                            Get.to(() => RagisterScreen4());
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
                            value: 0.6,
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
