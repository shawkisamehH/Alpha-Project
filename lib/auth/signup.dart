import 'package:firebase_auth/firebase_auth.dart';
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

  final _emailcontroller = TextEditingController();
 final _passwordcontroller = TextEditingController();
 final _confirmpasswordcontroller = TextEditingController();
 Future signUp() async{
  if(passwordConfirmed()){
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email:_emailcontroller.text.trim(),
     password:_passwordcontroller.text.trim());
     
     Get.offNamed(AppRoute.Auth);
  }
 }
 bool passwordConfirmed(){
  if(
    _confirmpasswordcontroller.text.trim()==
    _passwordcontroller.text.trim()
  ){
    return true;

  }else{
    return false;

  }
 }
  @override

  void dispose(){
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirmpasswordcontroller.dispose();

  }
  @override
  Widget build(BuildContext context) {
    
    //signUpControllerImp controller = Get.put(signUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
        child:ListView(
          children:  [
             
            const Text('Welcome',
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
                 
                 
                    
                 ),
               ),
             ),
           ),
           SizedBox(height: 10,),
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
                  controller: _confirmpasswordcontroller,
                  obscureText:true ,
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText:'Confirm Password'  
                  ) ,
                 
                 
                    
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
              onTap:signUp ,
               child: Container(
                padding:EdgeInsets.all(16) ,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(12) ,
             
                  color:Colors.amber[900] 
                        
                ) ,
                child:Center(child: Text('Sign Up',
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
               Text('Are you a member?',
                style:TextStyle(
                
                fontWeight:FontWeight.bold  
               )),
               GestureDetector(
                onTap: (){
                  Get.offNamed(AppRoute.login);
                },
                 child: Text(' Sign In',
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
        ) , );
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