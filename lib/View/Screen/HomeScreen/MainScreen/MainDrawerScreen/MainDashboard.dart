import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Graph_part.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/HeaderW.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/TermineAndKalender.dart';
import 'package:flutter/material.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(children: [
        const HeaderWidget(),
        const Divider(
          thickness: 1,
          color: Color(0xffF3F3F3),
        ),
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: screenSize.size.width / 2.5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const GraphSecion()),
              Container(
                width: screenSize.size.width / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const TermineAndKalender(),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
