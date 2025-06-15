import 'dart:async';

import 'package:e_commece_app/screens/oath_ui/welcome_screen.dart';
import 'package:e_commece_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Get.offAll(()=> WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
      ),
      body:Container(
          child: Column(
            children: [
              Expanded(
          child: Container(
          width: Get.width,
            alignment: Alignment.center,
          child: Lottie.asset("assets/images/lottie/welcome.json",
                    width: 300, // Increase width
                    height: 300, // Increase height
                    fit: BoxFit.contain,),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(bottom: 100),
                width: Get.width,
                alignment: Alignment.center,
                child: Text(
                  AppConstant.appPoweredBY,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
      ),
    );
  }
}