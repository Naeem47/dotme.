import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  String text;
  double fontsize;
  FontWeight fontweight;
  Color fontcolor;
  TextAlign textAlignment;
  double height;
  double? scale;
  MyText({
    Key? key,
    required this.text,
    this.fontsize = 14,
    this.scale,
    this.fontweight = FontWeight.w600,
    this.fontcolor = const Color(0xff212121),
    this.textAlignment = TextAlign.justify,
    this.height = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textScaleFactor: scale,
        textAlign: textAlignment,
        softWrap: true,
        style: GoogleFonts.urbanist(
          fontSize: fontsize,
          height: height.h,
          fontWeight: fontweight,
          color: fontcolor,
        ));
  }
}
