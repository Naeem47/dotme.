import 'package:dot_me/Controllor/MainControllor.dart';
import 'package:dot_me/View/Screen/Auth_Screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    changeScreen();

    super.initState();
  }

  changeScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const LoginScreen());
     // Get.toNamed('LoginScreen');
    });
  }

  @override
  var contollor = Get.put(MainControllor);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const  BoxDecoration(
            
           image: DecorationImage(image: AssetImage('assets/bgImage.png'),fit: BoxFit.cover),
          ),
          
        ),
      ),
    );
  }
}
