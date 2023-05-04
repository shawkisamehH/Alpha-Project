


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

 Future<bool> alertExitApp(){
   Get.defaultDialog(
   title:'Warning',
   middleText: 'Do You want to exit Application',
   actions: [
    ElevatedButton(
      style:ElevatedButton.styleFrom(
        backgroundColor:Colors.orange[900] 
      ) ,
      onPressed: (){
      exit(0);
    },
     child:Text('Yes')),
      ElevatedButton(
        style:ElevatedButton.styleFrom(
        backgroundColor:Colors.orange[900] 
      ) ,
        onPressed: (){
        Get.back();
      },
     child:Text('NO')),

   ] 
  
);
return Future.value(true);

}