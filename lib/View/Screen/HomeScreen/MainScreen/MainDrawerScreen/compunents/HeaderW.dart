import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
              text: 'Dashboard',
              fontsize: 39,
              fontweight: FontWeight.w900,
              fontcolor: Colors.black),
          const Spacer(),
          Row(
            children: [
              Container(
                height: 48,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(99)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/ProfilePerson.png'),
                              fit: BoxFit.fill)),
                    ),
                    MyText(
                        text: 'Gesamte Organisation',
                        fontsize: 16,
                        fontweight: FontWeight.w500,
                        fontcolor: Colors.white),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down),
                      color: Colors.white,
                    )
                  ],
                ),
              ),

              5.horizontalSpace,
              Container(
                height: 48,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(99)),
                child: Row(
                  children: [
                    5.horizontalSpace,
                    MyText(
                        text: 'Gesamte Organisation',
                        fontsize: 16,
                        fontweight: FontWeight.w500,
                        fontcolor: Colors.white),
                    3.horizontalSpace,
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              5.horizontalSpace,


              DrawerIconButton(
                bgcolor: Colors.black,
                image: 'assets/filtericon.png',),
              5.horizontalSpace,
              DrawerIconButton(
                bgcolor: Colors.black,
                image: 'assets/whitesettingicon.png',),
            ],
          )
        ],
      ),
    );
  }
}
