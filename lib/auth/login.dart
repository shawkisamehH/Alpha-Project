import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/auth/custombuttonauth.dart';
import 'package:trainflutter/auth/customtextform.dart';
import 'package:trainflutter/component/button.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/controller/login_controller.dart';
import 'package:trainflutter/functions/validinput.dart';

import '../functions/alertexit.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   LoginControllerImp controller =Get.put(LoginControllerImp());
    return Scaffold(
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
        child:Form(
          key:controller.formstate ,
          child: ListView(
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
             CustomTextFormAuth(
               valid: (val) {
                  return validInput(val!, 5,60, 'username');
                },
              mycontroller:controller.username,
              hinttext:'Enter Your Username',
               iconData:Icons.person_2_outlined,
                labeltext: 'Username',
                
             ),
               CustomTextFormAuth(
                 valid: (val) {
                   return validInput(val!,14,14, 'nationalid');
                },
                 mycontroller: controller.nationalid,
              hinttext:'Your ID',
               iconData:Icons.card_membership_outlined ,
                labeltext: 'National ID ',
                
             ),
              
              GetBuilder<LoginControllerImp>
              (builder:(controller)=>
              CustomTextFormAuth(
                obscureText:controller.isshowpassword,
                onTapIcon:(){
                  controller.showPassword();
                } ,
                 valid: (val) {
                   return validInput(val!, 8,30, 'password');
                },
                 mycontroller: controller.password,
              hinttext:'Enter Your Password',
               iconData:Icons.lock_outline ,
                labeltext: 'Password ',
               
             )),
             const Text(
              'Forget Password',
              style:TextStyle(
                color:Colors.blue,
                fontWeight:FontWeight.bold,  
              ) ,
              textAlign: TextAlign.end,
             ),
             CustomButtonAuth(
              text: 'Sign In', onPressed: (){
               // controller.login();
               Get.toNamed(AppRoute.homepage);
              },
            ),
            const SizedBox(height:10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account ?'),
                InkWell(
                  onTap:(){
                   controller.goTosignUp();
                  } ,
                  child: Text('Sign Up',
                style:TextStyle(color:Colors.orange[900],
                fontWeight:FontWeight.bold  ) ,
                ),)
        
              ],
            ),
        
        
          ]),
        ) ,
      )
, )
    );
  }
}
