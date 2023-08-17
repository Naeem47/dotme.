import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllor/MainControllor.dart';
import 'MyText.dart';

class MyButton extends StatelessWidget {
  final dynamic buttontext;
  final VoidCallback? onPressed;
  final Color textcolor, bordercolor, backgroundcolor;
  final double fontsize;
  final FontWeight fontweight;
  final double radius, height, width;
  final TextAlign textAlignment;
  MyButton(
      {required this.buttontext,
      required this.onPressed,
      this.textcolor = Colors.white,
      this.backgroundcolor =  const Color(0xff1F71FF),
      this.fontsize = 16,
      this.fontweight = FontWeight.bold,
      this.radius = 25,
      this.height = 52,
      this.width = double.infinity,
      this.bordercolor = Colors.transparent,
      this.textAlignment = TextAlign.justify,
      super.key});

  final controllor = MainControllor();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundcolor,
         
         
          ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            // elevation: 8,
            backgroundColor: Colors.transparent,
            // backgroundColor: backgroundcolor,
            side: BorderSide(width: 4, color: bordercolor),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            )),
        onPressed: onPressed,
        child: MyText(
          textAlignment: textAlignment,
          text: buttontext,
          fontsize: fontsize,
          fontcolor: textcolor,
          fontweight: fontweight,
        ),
      ),
    );
  }
}
