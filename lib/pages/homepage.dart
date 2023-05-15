// ignore_for_file: camel_case_types


import 'package:badges/badges.dart' as badge; 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/pages/bodyhomepage.dart';
import 'Navbar.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const Navbar() ,
       appBar: AppBar(
         backgroundColor: Colors.orange[900],
        title:Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const CircleAvatar(
            radius: 45,
            backgroundColor:Colors.orangeAccent ,
            child:
            
             Image(image: AssetImage('asset/images/logo.jpg')),
          ), ) ,
        actions: [
         Container(
          margin:const EdgeInsets.all(5)  ,
           child: Row(
            children: [
              IconButton(onPressed: (){
                
              }, icon:const Icon(Icons.search)),
              badge.Badge(
                badgeAnimation:const badge.BadgeAnimation.slide() ,
                position: badge.BadgePosition.topStart(start:20 ),
                badgeStyle: const badge.BadgeStyle(badgeColor:Colors.blue,
                
                padding:EdgeInsets.all(8) ),
                badgeContent:Text('$count') ,
                child: IconButton(onPressed: (){
                 
                  setState(() {
                    
                  });
                },
                 icon:const Icon(Icons.notifications))),
              
            ],
            
           ),
         )
        ],
      ),
      body:const bodyhomepage(imageUrls:[
      'asset/images/giza.png',
      'asset/images/giza.png',
      'asset/images/giza.png',
      'asset/images/giza.png',
      'asset/images/giza.png',

      ], titles:[
        'Giza',
        'Alex',
        'Giza',
        'Alex',
        'Cairo'

      ]),

      floatingActionButton:Container(
        
        height:90 ,
        width:80 ,
        child: FloatingActionButton.extended(
          backgroundColor:Colors.white10 ,
          label: Image.asset('asset/icon/chatbot.png',
          height:80,
          width:68  ,) ,
         
          tooltip:'Increment' ,
          onPressed: ()async {
          try{

                dynamic conversationObject = {
     'appId': '6944106d889d7e68d672da73136d444f',
     };

     dynamic result =await KommunicateFlutterPlugin.buildConversation(conversationObject);
        
      print("Conversation builder success : " + result.toString());
    } on Exception catch(error){
      print("Conversation builder error : " + error.toString());
    };
          }
          ,
        
          ),
      ));

  }
}