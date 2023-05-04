// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class informationprofile extends StatelessWidget {
  final String name;
  final String about;
  final String email;
  final String phone;
  final String id;
  final String national;



  const informationprofile({super.key,
   required this.name,
    required this.about,
     required this.email,
      required this.phone, 
      required this.id, 
      required this.national, });

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
         
    
               SizedBox(height: 15,),
    
    
              
    
                 SizedBox(height: 15,),
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.person_rounded,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(email,
                    style:TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600      
                    ) ,
                    ),      
                   ],),
                 ),
               ),
    
                 
                 SizedBox(height: 15,),
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.email_rounded,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(email,
                    style:TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600      
                    ) ,
                    ),      
                   ],),
                 ),
               ),
               SizedBox(height: 15,),
    
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.phone_android_rounded,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(phone,
                    style:const TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600  
                          
                    ) ,
                    )
                          
                   ],),
                 ),
               ),
               SizedBox(height: 15,),
    
    
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.card_membership_rounded,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(id,
                    style:TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600      
                    ) ,
                    ),      
                   ],),
                 ),
               ),
               SizedBox(height: 15,),
    
    
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.language_rounded,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(national,
                    style:TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600      
                    ) ,
                    ),      
                   ],),
                 ),
               ),
               SizedBox(height: 15,),
    
                Container(
                decoration:BoxDecoration(
                   color:Colors.grey[300] ,
                   borderRadius:BorderRadius.circular(15) 
    
                ) ,
                width:double.infinity ,
                height:60,
               
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    
                    children: [
                      const SizedBox(width:20 ,),
                    const Icon(Icons.abc_outlined,
                    color:Colors.orange ,),
                    const SizedBox(width:40,),
                     Text(about,
                    style:const TextStyle(
                      color:Colors.black ,
                     fontSize:20,
                     fontWeight:FontWeight.w600  
                          
                    ) ,
                    )
                          
                   ],),
                 ),
               ),
              
        ],
      ),
    );
  }
}