import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';

 class tripitem extends StatelessWidget {
  final String details;
  final String title;
  final String image;
  final int days; 
  final String tripType;
  final String season;
  
  void selectTrip(BuildContext context){
    Get.toNamed(AppRoute.tripdetails);

  }


  const tripitem({super.key,
    required this.title, 
    required this.image,
     required this.days,
      required this.tripType,
       required this.season,
        required this.details});

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap:() => selectTrip(context),
      child:Card(
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
        elevation:7 ,
        margin:EdgeInsets.all(10) ,
        child:Column(
          children: [
            Stack(
              children: [
               ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(15),
                  topRight:Radius.circular(15),) ,
                  child: Image.asset(image,
                  height: 250,
                  width:double.infinity ,
                  fit:BoxFit.cover ,

                  ),

               ),
               Container(
                height:250 ,
                alignment:Alignment.bottomRight ,
                padding:
                EdgeInsets.symmetric(
                  vertical:10,
                  horizontal:20 ) ,
                  decoration:BoxDecoration(
                   gradient:LinearGradient(
                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.8),
                    ] ,
                    stops:[
                      0.6,1
                    ] 
                   )  
                  ) ,

                 child: Text(title,
                 overflow:TextOverflow.fade ,
                 style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize:26,
                  color:Colors.white, 
               
                 ) ,
                 ),
               ),

              ], ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Row(
                    children: [
                      Icon(Icons.today,
                      color:
                      Colors.orangeAccent ,),
                      SizedBox(width:6 ,),
                      Text('$days days')
                    ],
                  ),
                   Row(
                    children: [
                      Icon(Icons.wb_sunny,
                      color:
                      Colors.orangeAccent ,),
                      SizedBox(width:6 ,),
                      Text(season)
                    ],
                  ),
                   Row(
                    children: [
                      Icon(Icons.family_restroom,
                      color:
                      Colors.orangeAccent ,),
                      SizedBox(width:6 ,),
                      Text(tripType)
                    ],
                  )
                 ], 
                ),
              )
          ],
        ),
      ) ,
    );
  }
}