import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  String? labeltext;
  double radius;

  double fontsize, width;
  FontWeight fontWeight;
  Widget? child;
  Color? backColor;
  Color iconcolor, borderColor;
  TextEditingController controller;
  String prefixIcon;

  MyTextField({
    Key? key,
    required this.hintText,
    this.radius = 8,
    this.labeltext,
    this.backColor,
    this.fontsize = 16,
    required this.prefixIcon,
    this.width = 500,
    this.fontWeight = FontWeight.w500,
    this.child,
    this.iconcolor = const Color(0xff4A89F5),
    this.borderColor = Colors.black,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: width,
      //  height: 150,
      child: TextFormField(
        maxLines: 1,
        controller: controller,
        cursorColor: Colors.black,
        cursorHeight: 20,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          height: 1.5,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        decoration: InputDecoration(
            prefixIcon: Image.asset(
              prefixIcon,
              height: 24,
              width: 24,
              scale: 2,
            ),
            labelText: labeltext,
            // label:Text(labeltext!),
            labelStyle: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            suffixIconConstraints:
                const BoxConstraints(maxHeight: double.infinity),
            suffixIcon: child,
            contentPadding: const EdgeInsets.fromLTRB(20.0, 18.0, 18.0, 15.0),
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(
              fontSize: fontsize,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            fillColor: backColor ?? Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(radius),
            )),
      ),
    );
  }
}
