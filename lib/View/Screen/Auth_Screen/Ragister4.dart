import 'package:dot_me/View/Screen/Auth_Screen/Ragister5.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:dot_me/View/Utils/Widgets/MyButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RagisterScreen4 extends StatefulWidget {
  const RagisterScreen4({super.key});

  @override
  State<RagisterScreen4> createState() => _RagisterScreen4State();
}

class _RagisterScreen4State extends State<RagisterScreen4> {
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
                              'Fast geschafft!\nEs wartet ein letzter\nIdentity Check\nauf dich.',
                          fontsize: 40.sp,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        10.verticalSpace,
                        SizedBox(
                          width: 150.w,
                          child: MyText(
                            text:
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                            fontcolor: Colors.grey,
                            fontsize: 12.sp,
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          height: 36.h,
                          width: 169,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.grey),
                          child: Center(
                            child: MyText(
                              text: "Identity Check durchführen",
                              fontcolor: Colors.black,
                              fontsize: 10.sp,
                            ),
                          ),
                        ),
                        35.verticalSpace,
                        MyButton(
                          buttontext: 'Registrierung abschließen',
                          onPressed: () {
                            Get.to(() => RagisterScreen5());
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
                            value: 0.8,
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
                    image: AssetImage('assets/p.png'), fit: BoxFit.cover),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
