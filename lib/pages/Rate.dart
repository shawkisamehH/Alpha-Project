

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/routes.dart';

class ratepage extends StatefulWidget {
  const ratepage({super.key});

  @override
  State<ratepage> createState() => _ratepageState();
}

class _ratepageState extends State<ratepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
        backgroundColor:Colors.orange[900] ,
        title:Text('Rate') ,),
        body: Column(
         
          children: [

            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            Divider(),
            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            Divider(),
            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            Divider(),
            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            Divider(),
            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            Divider(),
            Column(
             
              children: [
                Text('How satisfied are you ?',
                
                style:TextStyle(
                  fontSize:25 
                ) ,
                ),
                SizedBox(height: 20,),
                
                  RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),

              ],
            ),
            SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:Colors.orange[900] 
            ),
            onPressed: (){}, 
            
            
            child:Text('Submit',
          style:TextStyle(
            fontSize: 30
          )


          ))
          ],
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