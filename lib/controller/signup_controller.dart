import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trainflutter/auth/signup.dart';
import 'package:trainflutter/constant/routes.dart';

abstract class signUpController extends GetxController{

signUp();
goTosignIn();

}
 class signUpControllerImp extends signUpController{
  GlobalKey<FormState>formstate=GlobalKey<FormState>();

 late TextEditingController email;
 late TextEditingController nationalid;
 late TextEditingController password;
 late TextEditingController username;
 late TextEditingController Phone;

 @override
 signUp() {
    var formdata= formstate.currentState;
  if(formdata!.validate()){
    print('Valid data');
  }else{
    print('Not valid data');
  }

 }
  @override
  goTosignIn() {
    Get.offAllNamed(AppRoute.login);

   }
   @override
   Void? onInit(){
    email = TextEditingController();
     password = TextEditingController();
      nationalid = TextEditingController();
      username = TextEditingController();
      Phone = TextEditingController();
     super.onInit();
      return null;
   }
   @override
   void dispose(){

    email.dispose();
    password.dispose();
    nationalid.dispose();
    username.dispose();
    Phone.dispose();
   }

  
}