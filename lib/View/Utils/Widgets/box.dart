import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "! Monat",
              fontsize: 12,
              fontweight: FontWeight.w500,
            ),
            const SizedBox(
              height: 5,
            ),
            MyText(
              text: "1992.23\$",
              fontsize: 16,
              fontweight: FontWeight.w900,
            ),
          ],
        ),
      ),
    );
  }
}
