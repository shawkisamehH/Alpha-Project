import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
 
  
  
  const CustomButtonAuth({super.key,
   required this.text,
    this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10) ,
      child: MaterialButton(
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ) ,
        padding:const EdgeInsets.symmetric(vertical: 12) ,
        onPressed: onPressed ,
      
       color:Colors.orange[900],
      textColor:Colors.white ,
       child:Text(text,style:TextStyle(
      
        fontWeight:FontWeight.bold  
       ) ,) ,
       
      ),
    );
  }
}