
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/component/informationprofile.dart';
import 'package:trainflutter/constant/routes.dart';

class profilepage extends StatefulWidget {
 
   
  const profilepage({super.key,
  });

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
 
  
  @override
  Widget build(BuildContext context) {
  
   
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.orange[900]  ,
        title: const Text(' Profile'),
       leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    },
  ),
 
      ) ,
      body:
     Padding(
       padding: const EdgeInsets.all(15.0),
       child: Column(
        children: [
          SizedBox(
            height: 120,
            width:120,
            child:Stack(
              fit:StackFit.expand,
              
              children: [
                const CircleAvatar(
                backgroundImage:AssetImage('asset/images/person2.jpg') ,  
                ),
                Positioned(
                  right:-20 ,
                  bottom:-20 ,
                  child: SizedBox(
                    height:70 ,
                    width: 70,
                    child: MaterialButton(
                      shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10) 
                      ) ,
                      onPressed:(){} ,
                    child:Image.asset('asset/images/camera.png'),
                    
                    )
                  ),
                )
              ],
            ) ,
          ),
     
          const SizedBox(height: 20,),
           const informationprofile(
             name:'Shawki Sameh Shawki',
             phone: '01090488551',
             id: '134569875255',
             national: 'Egyptional',
             about: 'Heloo Every one',
              email: 'shawkisameh@gmail.com',),
              const SizedBox(height:15),

              MaterialButton(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10) 
                ) ,
                color:Colors.orange[900] ,
                textColor:Colors.white ,
                onPressed: (){},
              child:const Text('Edit',
              style:TextStyle(
                fontWeight:FontWeight.bold ,
                fontSize:20 
              ) ,
              ) ,)
     
     
     
     
        ],
       ),
     ),
      floatingActionButton:Container(
        
        height:90 ,
        width:80 ,
        child: FloatingActionButton.extended(
          backgroundColor:Colors.white10 ,
          label: Image.asset('asset/icon/chatbot.png',
          height:80,
          width:68  ,) ,
         
          tooltip:'connect to Alpha' ,
          onPressed: (() {
         Get.toNamed(AppRoute.chat);
        } ) ,
        
          ),
      )
           
                  
                
              
              
             
      );
    
  }
  


}