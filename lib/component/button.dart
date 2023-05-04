 

// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

 import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final title;
  final function;
   const MyButton({super.key,this.function,this.title});
 
   @override
   Widget build(BuildContext context) {
     return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[900],
        padding: const EdgeInsets.symmetric(horizontal: 60),
        backgroundColor:Colors.orange[900] ,
        
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) 
      ),
      onPressed: function, 
      
      child:Text('$title',style:const TextStyle(color:Colors.white,
      fontSize: 20
      ) ,));
   }
 }