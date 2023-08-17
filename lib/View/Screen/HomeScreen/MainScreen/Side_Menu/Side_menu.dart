import 'package:dot_me/View/Screen/HomeScreen/KalenderScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Side_menu extends StatelessWidget {
  const Side_menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
      height: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              2.verticalSpace,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                height: 52,
                width: 52,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logoball.png'),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 35,
                child: Divider(
                  thickness: 1,
                  color: Color(0xffF3F3F3),
                ),
              ),
              DrawerIconButton(
                image: 'assets/dotedicon.png',
              ),
              DrawerIconButton(
                image: 'assets/calendericon.png',
              ),
              DrawerIconButton(
                image: 'assets/personicon.png',
              ),
              DrawerIconButton(
                image: 'assets/massegebox.png',
              ),
              DrawerIconButton(
                image: 'assets/notesicon.png',
              ),
              DrawerIconButton(
                image: 'assets/meicon.png',
              ),
              const Spacer(),
              DrawerIconButton(
                image: 'assets/logout.png',
              ),
            ],
          ),
          const VerticalDivider(
            thickness: 2,
            color: Color(0xffF3F3F3),
          )
        ],
      ),
    );
  
  
  }
}
