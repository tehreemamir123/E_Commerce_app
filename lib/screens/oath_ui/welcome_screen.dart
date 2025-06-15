import 'package:e_commece_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen  ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: AppConstant.appStatusBarColor,
        title: Text("WelCome to MyAPP",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Center(
              child: Container(
                child: Lottie.asset("assets/images/lottie/welcome.json",
                  width: 250, // Increase width
                  height: 250, // Increase height
                  fit: BoxFit.contain,),
              ),
            ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text("Happy Shopping",
                  style: TextStyle(color: Colors.black,fontSize: 26,
                fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              Material(
                child: Container(
                  width: Get.width /1.2,
                  height: Get.height /12,
                  decoration: BoxDecoration(
                    color: AppConstant.appStatusBarColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: TextButton.icon(
                      icon: Image.asset(
                        "assets/images/google.png",
                        width: Get.width /12,
                        height: Get.height/ 12,
                      ),
                      label: Text("Sign in with google",style: TextStyle(color: Colors.white,
                          fontSize:22 ),),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Material(
                child: Container(
                  width: Get.width /1.2,
                  height: Get.height /12,
                  decoration: BoxDecoration(
                    color: AppConstant.appStatusBarColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,size: 40,
                      ),
                      label: Text("Sign in with E-mail",style: TextStyle(color: Colors.white,
                          fontSize:22 ),),
                      onPressed: (){},
                    ),
                  ),
                ),




















            ]
          ),
        ),
      ),
      
    );
  }
  
}