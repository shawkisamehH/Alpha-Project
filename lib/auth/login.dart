import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/auth/custombuttonauth.dart';
import 'package:trainflutter/auth/customtextform.dart';
import 'package:trainflutter/component/button.dart';
import 'package:trainflutter/constant/routes.dart';

import 'package:trainflutter/functions/validinput.dart';

import '../functions/alertexit.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 final _emailcontroller = TextEditingController();
 final _passwordcontroller = TextEditingController();
 Future signIn() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email:_emailcontroller.text.trim(),
     password:_passwordcontroller.text.trim());
     Get.offNamed(AppRoute.Auth);
 }
  @override

  void dispose(){
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();

  }
  @override
  Widget build(BuildContext context) {
   //LoginControllerImp controller =Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor:Colors.grey[200] ,
      appBar:AppBar(
      centerTitle:true,
      backgroundColor:Colors.white30 ,
      elevation:0.0,
      title:const Text('Sign In',
      style:TextStyle(
        color:Colors.grey ,
        fontSize:25 
      ) ,
      ) ,
      ),


      body:WillPopScope( 
        onWillPop:alertExitApp,
        child: Container(
        padding:const EdgeInsets.symmetric(vertical:15,horizontal:30 ) ,
        child:ListView(
          children:  [
             
            const Text('Welcome Back',
            textAlign:TextAlign.center ,
            style:TextStyle(
              fontSize:30,
              fontWeight:FontWeight.bold  
            ) , ),
            const SizedBox(height:20 ,),
            const CircleAvatar(
              radius:120 ,
              
              backgroundImage:AssetImage('asset/images/logo2.jpg') ,
            ),
            const SizedBox(height:30,), 
        
            //Email
           Padding(
            
             padding: const EdgeInsets.symmetric(
              horizontal: 25,
             ),
             child: Container(
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(12) 
              ) ,
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                  horizontal: 20
                 ),
                 child: TextField(
                  controller:_emailcontroller ,
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText:'Email'  
                  ) ,
                  //  valid: (val) {
                  //     return validInput(val!, 5,60, 'email');
                  //   },
                  // mycontroller:controller.email,
                 
                    
                 ),
               ),
             ),
           ),
          SizedBox(height:10 ,),

           Padding(
            
             padding: const EdgeInsets.symmetric(
              horizontal: 25,
             ),
             child: Container(
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(12) 
              ) ,
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                  horizontal: 20
                 ),
                 child: TextField(
                  controller: _passwordcontroller,
                  obscureText:true ,
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText:'Password'  
                  ) ,
                  //  valid: (val) {
                  //     return validInput(val!, 5,60, 'email');
                  //   },
                  // mycontroller:controller.email,
                 
                    
                 ),
               ),
             ),
           ),
           SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.symmetric(
              horizontal: 25
             ),
             child: GestureDetector(
              onTap:signIn ,
               child: Container(
                padding:EdgeInsets.all(16) ,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(12) ,
             
                  color:Colors.amber[900] 
                        
                ) ,
                child:Center(child: Text('Sign In',
                style:TextStyle(
                  color:Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize: 18 
             
                ) ,
                )) ,
               ),
             ),
           ),
           SizedBox(height: 25,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Not yet a member?',
                style:TextStyle(
                
                fontWeight:FontWeight.bold  
               )),
               GestureDetector(
                onTap: (){
                  Get.offNamed(AppRoute.signUp);
                },
                 child: Text(' Sign up Now',
                 style:TextStyle(
                  color:Colors.green,
                  fontWeight:FontWeight.bold  
                 ) ,),
               )
             ],
           )





          //    CustomTextFormAuth(
          //      valid: (val) {
          //        return validInput(val!,14,14, 'nationalid');
          //     },
          //      mycontroller: controller.nationalid,
          //   hinttext:'Your ID',
          //    iconData:Icons.card_membership_outlined ,
          //     labeltext: 'National ID ',
              
          //  ),
            
           
              
             
        ] )),
        ) ,
      

    );
  }
}
