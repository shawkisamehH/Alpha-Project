

import 'package:get/get.dart';

validInput(String val,int min,int max, String type){

if(!GetUtils.isUsername(val) ){
  return 'Not valid username';
}


if(!GetUtils.isEmail(val) ){
  return 'Not valid email';
}


if(!GetUtils.isPhoneNumber(val) ){
  return 'Not valid phone';
}

if (val.isEmpty){
  return 'Vlaue cant be Empty';
}

if (val.length<min){
  return 'Vlaue cant be less than $min';
}


if (val.length>max){
  return 'Vlaue cant be larger than $max';
}





}