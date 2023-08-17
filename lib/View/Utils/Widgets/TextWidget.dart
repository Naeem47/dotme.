import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String myText;
  const TextWidget({super.key, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(
        myText,
        style: GoogleFonts.urbanist(
            fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
      ),
    );
  }
}

class TextWidget2 extends StatelessWidget {
  final String myText;
  const TextWidget2({super.key, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: GoogleFonts.urbanist(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xffB3B3B3)),
    );
  }
}
