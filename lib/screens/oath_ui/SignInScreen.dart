import 'package:e_commece_app/screens/oath_ui/SignUPScreen.dart';
import 'package:e_commece_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible)
    {
      return Scaffold(
        appBar: AppBar(
          title: Text("Sign in", style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 25),),
          backgroundColor: AppConstant.appStatusBarColor,
          centerTitle: true,
        ),
        body:
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Container(
            child: Column(
              children: [
                isKeyboardVisible? Text("Welcome to MyAPP"):
                Column(
                  children: [
                    Lottie.asset("assets/images/lottie/welcome.json",
                  width: 200, // Increase width
                  height: 200,
                      fit: BoxFit.fill// Increase height)
              ),],),
                SizedBox(
                  height: Get.height /12,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0) ,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appMainColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon:Icon (Icons.email),
                        contentPadding: EdgeInsets.only(top: 10, left: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height /55,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0) ,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appMainColor,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon:Icon (Icons.password),
                          suffixIcon: Icon(Icons.visibility_off),
                          contentPadding: EdgeInsets.only(top: 10, left: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  child: 
                  Text("Forget Password?", style: TextStyle(color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                Material(
                  child: Container(
                    width: Get.width /2,
                    height: Get.height /18,
                    decoration: BoxDecoration(
                      color: AppConstant.appStatusBarColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextButton(
                        child: Text("Sign in",style: TextStyle(color: Colors.white,
                            fontSize:22 ),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height /40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: AppConstant.appStatusBarColor,
                    fontSize: 20),),
                    GestureDetector(
                      onTap: ()=>Get.offAll(()=>SignUpScreen()),
                      child: Text("Sign UP",style: TextStyle(color: AppConstant.appStatusBarColor,
                      fontSize: 20,fontWeight: FontWeight.bold ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } );
      }
}