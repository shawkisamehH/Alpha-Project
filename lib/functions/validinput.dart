

import 'package:get/get.dart';

validInput(String val,int min,int max, String type){


  

if (type == 'username'){
if(!GetUtils.isUsername(val) ){
  return 'Not valid username';
}
}



  if (type == 'email'){
if(!GetUtils.isEmail(val) ){
  return 'Not valid email';
}
  }
   if (type == 'phone'){
if(!GetUtils.isPhoneNumber(val) ){
  return 'Not valid phone';
}
   }
   if (type == 'nationalid'){
if (val.isEmpty){
  return 'Vlaue cant be Empty';
}
   }

if (val.length<min){
  return 'Vlaue can not be less than $min';
}


if (val.length>max){
  return 'Vlaue can not be larger than $max';
}





}