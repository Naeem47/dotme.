import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldMsg extends StatelessWidget {
  const TextFieldMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 44,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black)),
            hintText: 'Schreib etwas',
            hintStyle: GoogleFonts.roboto(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
            contentPadding: const EdgeInsets.only(left: 10, right: 10)),
      ),
    );
  }
}
