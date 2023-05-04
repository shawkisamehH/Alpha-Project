
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/localizations/changelocal.dart';
import 'package:trainflutter/pages/start.dart';
import 'package:trainflutter/widgets/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.all(15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('1'.tr,
            style:const TextStyle(
              fontWeight:FontWeight.bold,
              fontSize:25,  
            )
            
            ),
           const SizedBox(height: 20,),

          custombuttonlang(textbutton:'Ar' ,onPressed: () {

            controller.changeLang('ar'); 
            Get.toNamed(AppRoute.startpage);   
            
          }, ),

          custombuttonlang(textbutton:'En' ,onPressed: () {
            controller.changeLang('en');
          
             Get.toNamed(AppRoute.startpage) ;
          },)
             

          ],
        ) ,
      ) ,
    );
  }
}