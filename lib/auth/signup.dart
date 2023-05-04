import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/auth/custombuttonauth.dart';
import 'package:trainflutter/auth/customtextform.dart';
import 'package:trainflutter/component/button.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/controller/signup_controller.dart';
import 'package:trainflutter/functions/alertexit.dart';
import 'package:trainflutter/functions/validinput.dart';

class signUp extends StatefulWidget {

   
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    
    signUpControllerImp controller = Get.put(signUpControllerImp());
    return Scaffold(
      appBar:AppBar(
      centerTitle:true,
      backgroundColor:Colors.white30 ,
      elevation:0.0,
      title:const Text('Sign Up',
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
               
              Text('Journey Journal',
              
              textAlign:TextAlign.center ,
              style:TextStyle(
                color:Colors.orange[900] ,
                fontSize:30,
                fontWeight:FontWeight.bold  
              ) , ),
              SizedBox(height:20 ,),
             
              SizedBox(height:30,), 
               CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5,60, 'username');
                },
                mycontroller: controller.username,
              hinttext:'Enter Your Username',
               iconData:Icons.person_2_outlined ,
                labeltext: 'Username',
               
             ),
              //Email
             CustomTextFormAuth(
               valid: (val) {
                  return validInput(val!, 5,60, 'email');
                },
              mycontroller: controller.email,
              hinttext:'Enter Your Email',
               iconData:Icons.email_outlined ,
                labeltext: 'Email',
                
             ),
            
               CustomTextFormAuth(
                 valid: (val) {
                  return validInput(val!, 14,14, 'nationalid');
                },
                mycontroller: controller.nationalid,
              hinttext:'Your ID',
               iconData:Icons.card_membership_outlined ,
                labeltext: 'National ID ',
                 
             ),
               CustomTextFormAuth(
                 valid: (val) {
                  return validInput(val!, 11,11, 'phone');
                },
                mycontroller: controller.Phone,
              hinttext:'Enter Your Phone',
               iconData:Icons.phone_android_outlined ,
                labeltext: 'Phone',
                
             ),
              CustomTextFormAuth(
                 valid: (val) {
                  return validInput(val!, 8,30, 'password');
                },
                mycontroller: controller.password,
              hinttext:'Enter Your Password',
               iconData:Icons.lock_outline ,
                labeltext: 'Password ',
                
             ),
             Text(
              'Forget Password',
              textAlign: TextAlign.end,
              style:TextStyle(
                color:Colors.blue,
                fontWeight:FontWeight.bold  
              ) ,
             ),
             CustomButtonAuth(
              text: 'Sign Up',onPressed: (){
                controller.signUp();
              }, 
              
            ),
            SizedBox(height:10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(' have an account ?'),
                InkWell(
                  onTap:(){
                    controller.goTosignIn();
                  } ,
                  child: Text('Sign In',
                style:TextStyle(color:Colors.orange[900],
                fontWeight:FontWeight.bold  ) ,
                ),)
        
              ],
            ),
        
        
          ]),
        ) ,
      )

     ) );
  }
}




























// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

// import 'package:flutter/material.dart';
// import 'package:trainflutter/component/button.dart';

// class signup extends StatefulWidget {
//   const signup({super.key});

//   @override
//   State<signup> createState() => _signupState();
// }

// class _signupState extends State<signup> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
     
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: SizedBox(
//                 width:350,
               
                
//                 child: Image.asset('asset/images/logo.jpg',
//               )),
//             ),
//             const SizedBox(height:20 ,),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: Form(
//                   child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.person,
//                           color: Colors.orange,
//                         ),
//                         hintText: 'username',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                   ),
//                    Container(
//                     margin: const EdgeInsets.all(5),),
//                    TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.email,
//                           color: Colors.orange,
//                         ),
//                         hintText: 'Email',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(5),
//                   ),
//                   TextField(
                    
//                     decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.add_card,
//                           color: Colors.orange,
//                         ),
//                         hintText: 'National ID',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                   ),
      
//                   Container(
//                     margin:const EdgeInsets.only(top:10,bottom: 10) ,
//                     child: TextField(
//                       obscureText: true,
//                     decoration:InputDecoration(
                      
//                       prefixIcon:const Icon(Icons.password,color:Colors.orange ,) ,
//                       hintText:'Password' ,
//                       border:OutlineInputBorder(
//                         borderRadius:BorderRadius.circular(5), ) 
//                     ) ,
//                 ),
//                   ),
//                   Stack(
//                     alignment:Alignment.center ,
//                     children:[ 
//                       SizedBox(
//                        width:85 ,
//                        height:50 , ) ,
//                       Container(
//                         child:MyButton(
//                           title:'SignUp' ,
//                           function: (){},
//                         )
//                       ),
//                  ] ),
//                  const Divider(
//                   color:Colors.grey ,
//                   height:16 ,
//                   thickness:1 ,
//                  ),

//                  Container(
//                   margin: const EdgeInsets.only(top:30),
//                    child: MyButton(
//                     function: (){},
//                     title:'Continuo With Google' ,
//                    ),
//                  )
//                 //  Container(
//                 //   margin:EdgeInsets.only(top:20) ,
                  
//                 //   color:Colors.orange[900] ,
//                 //    child: ElevatedButton(
//                 //     style: ElevatedButton.styleFrom(
//                 //       primary: Colors.orange[900]
//                 //     ),
//                 //     onPressed:(){},
//                 //     child:Text('Continuo with Google',style: TextStyle(
//                 //       fontSize:20 ,
//                 //     ),)),
//                 //  )
//                 ],
//               )),
              
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }