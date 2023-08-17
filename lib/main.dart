import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            defaultTransition: Transition.rightToLeftWithFade,
            transitionDuration: const Duration(milliseconds: 500),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            home: const  HomeScreen(),
          );
        });
  }
}
