import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/pages/Navbar.dart';
import 'package:trainflutter/widgets/tripitem.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(
            leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
          title:const Text(' Trips',style:TextStyle(
           
          ) ,) ,
          backgroundColor: Colors.orange[900],
         ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              tripitem(
              image: 'asset/images/pyramidstrip.jpg', 
              title: 'Pyramids',
               tripType: 'Exploration', 
               days:4,
              season: 'Summer',
               details: 
               'pyramids-pyramids-pyramids-pyramids-pyramids-pyramids-pyramids-pyramids-pyramids' ,
        
        
            ),
              tripitem(
                 details: '' ,
              image: 'asset/images/safaritrip.jpg', 
              title: 'Safari',
               tripType: 'Activites', 
               days:7,
          season: 'Summer' ,
        
        
            ),
              tripitem(
                 details: '' ,
              image: 'asset/images/island.jpg', 
              title: 'Island',
               tripType: 'Recovery', 
               days:2,
          season: 'Summer' ,
        
        
            ),
              tripitem(
                 details: '' ,
              image: 'asset/images/seatrip.jpg', 
              title: 'Island',
               tripType: 'Sea Trip', 
               days:2,
          season: 'Summer' ,
        
        
            ),
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