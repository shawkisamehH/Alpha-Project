import 'dart:ffi';


import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trainflutter/auth/signup.dart';
import 'package:trainflutter/constant/routes.dart';

abstract class LoginController extends GetxController{

login();
goTosignUp();

}
 class LoginControllerImp extends LoginController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();

 late TextEditingController email;
 late TextEditingController nationalid;
 late TextEditingController password;
 bool isshowpassword = true;


 showPassword(){
  isshowpassword=isshowpassword== true? false:true;
  update();

 }


  

 @override
 login() {
  var formdata= formstate.currentState;
  if(formdata!.validate()){
    print('Valid data');
  }else{
    print('Not valid data');
  }
 }
  @override
  goTosignUp() {
    
   Get.offAllNamed(AppRoute.signUp);

   }
   @override
   Void? onInit(){
    email = TextEditingController();
     password = TextEditingController();
      nationalid = TextEditingController();
        super.onInit();
        return null;
   }
   @override
   void dispose(){

    email.dispose();
    password.dispose();
    nationalid.dispose();
    super.onInit();
   }

  
}