

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routes.dart';

class tripdetails extends StatelessWidget {
  const tripdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.orange[900] ,
         
           leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.home);
    }),
      ) ,
      body: Column(
        children: [
          Container(
            height:300 ,
            width: double.infinity,
            child:Image.asset('asset/images/pyramidstrip.jpg',
            fit:BoxFit.cover ,) ,
          ),
          Container(
            margin:EdgeInsets.symmetric(horizontal: 15,vertical: 10) ,
            alignment:Alignment.topLeft ,
            child:Text('Activities',
            style:TextStyle(
              fontSize:25,
              fontWeight:FontWeight.bold,
              color:Colors.black45   
            ) ,) ,
          ),
         Container(
          color:Colors.grey ,
          alignment:Alignment.topLeft ,
          margin: EdgeInsets.symmetric(
            horizontal:20,
            vertical:10  
          ),
           child: Text('Visiting Pyramids',
                 
           style:TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight:FontWeight.w500 ,
              
           ) ,),
         ),
          Container(
          color:Colors.grey ,
          alignment:Alignment.topLeft ,
          margin: EdgeInsets.symmetric(
            horizontal:20,
            vertical:10  
          ),
           child: Text('Riding Horses ',
                 
           style:TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight:FontWeight.w500 ,
              
           ) ,),
         ), Container(
          color:Colors.grey ,
          alignment:Alignment.topLeft ,
          margin: EdgeInsets.symmetric(
            horizontal:20,
            vertical:10  
          ),
           child: Text('Visiting Museums',
                 
           style:TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight:FontWeight.w500 ,
              
           ) ,),
         ), Container(
          color:Colors.grey ,
          alignment:Alignment.topLeft ,
          margin: EdgeInsets.symmetric(
            horizontal:20,
            vertical:10  
          ),
           child: Text('Visiting Monuments',
                 
           style:TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight:FontWeight.w500 ,
              
           ) ,),
         ),
         Container(
          alignment: Alignment.topLeft,
          margin:EdgeInsets.symmetric(
            horizontal:20,
            vertical: 10 
          ) ,
           child: Row(
           
           children: [
            Text('Duration :  ',
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold ,
              color:Colors.grey  
            ),),
            Row(
              children: [
                Icon(Icons.timer,
                color:Colors.orange[900] ,),
                 Text('4 Days',
            style:TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold  
            ) ,),
              ],
            ),
           
           ],
           ),
         ),
         Container(
          alignment: Alignment.topLeft,
          margin:EdgeInsets.symmetric(
            horizontal:20,
            vertical: 10 
          ) ,
           child: Row(
           
           children: [
            Text('Rate  ',
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold ,
              color:Colors.grey  
            ),),
            Row(
              children: [
                Icon(Icons.star_border_outlined,
                color:Colors.yellow ,),
                 Text('4.0',
            style:TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold  
            ) ,),
              ],
            ),
           
           ],
           ),
         ),
         Container(
          alignment: Alignment.topLeft,
          margin:EdgeInsets.symmetric(
            horizontal:20,
            vertical: 10 
          ) ,
           child: Row(
           
           children: [
            Text('Cost : ',
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold ,
              color:Colors.grey  
            ),),
            Row(
              children: [
                Icon(Icons.money,
                color:Colors.orange[900] ,),
                 Text('1000 EGP',
            style:TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold  
            ) ,),
              ],
            ),
           
           ],
           ),
         ),
         Container(
          alignment: Alignment.topLeft,
          margin:EdgeInsets.symmetric(
            horizontal:20,
            vertical: 10 
          ) ,
           child: Row(
           
           children: [
            Text('Date : ',
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold ,
              color:Colors.grey  
            ),),
            Row(
              children: [
                Icon(Icons.date_range_rounded,
                color:Colors.orange[900] ,),
                 Text('6/7/2023',
            style:TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold  
            ) ,),
              ],
            ),
           
           ],
           ),
         )
         

        ],
      )
      
    );
  }
}