import 'package:flutter/material.dart';


  Widget bookcard(
    String imgUrl,
    String hotelname,
    String location,
    int rating,
  ) {
    return Card(
      margin:EdgeInsets.only(right: 22,) ,
      clipBehavior:Clip.antiAlias,
      shape:RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(30), 
      ) ,
      elevation: 0.0,
      child:InkWell(
          onTap: (){},
          child:Container(
            decoration: BoxDecoration(
             image:DecorationImage(image:AssetImage(imgUrl),
             fit:BoxFit.cover,
             scale:2.0,  
             )),
             width:200.0 ,
             child:Padding(
              padding:EdgeInsets.all(12),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for(var i=0; i<rating; i++)
                      Icon(Icons.star,
                      color:Colors.yellow ,),
                     
                    ],
                  ),
                   Expanded(
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.end ,
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text(
                              hotelname,
                              style:TextStyle(
                                color:Colors.white,
                                fontSize:24,
                                fontWeight: FontWeight.w600, 
                              ) ,
                            ),
                            SizedBox(height: 6,),
                             Text(
                              location,
                              style:TextStyle(
                                color:Colors.white,
                                fontSize:20,
                                fontWeight: FontWeight.w400, 
                              ) ,
                            ),
                            


                          ],
                        ))
                ],
              ) ,
              
               ) ,
              
          ) ,

      ) ,
    );
  }
