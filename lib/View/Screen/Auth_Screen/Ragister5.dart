import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RagisterScreen5 extends StatefulWidget {
  const RagisterScreen5({super.key});

  @override
  State<RagisterScreen5> createState() => _RagisterScreen5State();
}

class _RagisterScreen5State extends State<RagisterScreen5> {
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
                          text:
                              'Perfekt!\nDein Identity Check\nwurde erfolgreich \nabgeschlossen.',
                          fontsize: 40.sp,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        10.verticalSpace,
                        35.verticalSpace,
                        MyButton(
                          buttontext: 'Fertig',
                          onPressed: () {
                            Get.to(() => HomeScreen());
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
                            value: 1,
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
