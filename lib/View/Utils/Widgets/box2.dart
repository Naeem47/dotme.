import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';

class Box2 extends StatelessWidget {
  const Box2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Center(
                  child: Image.asset("assets/fileicon.png"),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Package 1",
                    fontsize: 12,
                    fontweight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  MyText(
                    text: "1992.23\$",
                    fontsize: 16,
                    fontweight: FontWeight.w900,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  MyText(
                    text: "Umsatz",
                    fontsize: 16,
                    fontweight: FontWeight.w900,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
