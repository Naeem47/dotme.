import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static const IconData euro_symbol =
      IconData(0xe23c, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                child: Image.asset(
                  'assets/dotmelogotext.png',
                  height: 32,
                  width: 120,
                ),
              ),
              250.horizontalSpace,
              Padding(
                padding: const EdgeInsets.only(
                    top: 14.0, left: 18, bottom: 14, right: 20),
                child: Container(
                  width: 150,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: MyText(
                          text: 'Jetzt einloggen',
                          fontsize: 13,
                          fontweight: FontWeight.w500,
                          fontcolor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Image.asset(
                          'assets/arrowForward.png',
                          height: 16,
                          width: 10,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          20.verticalSpace,
          Container(
            width: 1048.w,
            height: 186.h,
            child: Text(
              "Lorem ipsum dolor sit amet,\nconsetetur sadiscing elitr",
              textAlign: TextAlign.center,
              style: GoogleFonts.urbanist(
                  fontSize: 61, fontWeight: FontWeight.w900),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mybox('assets/boxgradient.png', "Free", "Kostenlos"),
              mybox('assets/boxgradienttwo.png', "Basic", "\$${199.99}"),
              mybox('assets/boxgradientthree.png', "Premium", "\$${299.99}")
            ],
          ),
          60.heightBox
        ],
      ),
    ));
  }
}

mylist() {
  return ListTile(
    minVerticalPadding: 0,
    contentPadding: EdgeInsets.all(0),
    leading: Icon(
      Icons.check_box_outlined,
      color: Colors.white,
      size: 24,
    ),
    title: "Company 2 Projektplanung".text.size(12).white.make(),
  );
  // Container(
  //   width: 220,
  //   height: 30,
  //   child:
  // Row(
  //     children: [
  // Icon(
  //   Icons.check_box_outlined,
  //   color: Colors.white,
  //   size: 24,
  // ),
  //       1.horizontalSpace,
  //       MyText(
  //         text: 'Company 2 Projektplanung',
  //         fontsize: 16,
  //         fontweight: FontWeight.w500,
  //         fontcolor: Colors.white,
  //       ),
  //     ],
  //   ),
  // );
}

mybox(image, title, subtitle) {
  return Container(
    width: 100.w,
    // height: 755,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: ListView(
        shrinkWrap: true,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/staricon.png",
            alignment: Alignment.topLeft,
            width: 70.w,
            height: 70.h,
          ),
          // Container(
          //   width: 70,
          //   height: 70,
          //   decoration: BoxDecoration(
          //       color: Colors.black, borderRadius: BorderRadius.circular(100)),
          //   child: Image(image: AssetImage('assets/staricon.png')),
          // ),
          10.verticalSpace,
          MyText(
            text: title,
            fontsize: 61.sp,
            fontweight: FontWeight.w900,
            fontcolor: Colors.white,
          ),
          10.verticalSpace,
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          Divider(
            color: Colors.white,
            height: 1.h,
          ),
          mylist(),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: subtitle,
                fontsize: 30.sp,
                fontweight: FontWeight.w900,
                fontcolor: Colors.white,
              ),
              // 14.widthBox,
              Container(
                width: 40.w,
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Plan auswählen',
                      fontsize: 12,
                      fontweight: FontWeight.w800,
                      fontcolor: Colors.black,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 14,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}