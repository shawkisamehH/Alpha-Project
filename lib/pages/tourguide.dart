

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';

class tourguide extends StatefulWidget {
  const tourguide({super.key,
   required this.cairotour, required this.detailcairo,
    required this.Alextour, required this.detailAlex,
     required this.Aswantour, required this.detailAswan,
      required this.Neshatour, required this.detailNesha,
       required this.gonatour, required this.detailgona});

   final List<String> cairotour;
  final List<String> detailcairo;
  final List<String> Alextour;
  final List<String> detailAlex;
  final List<String> Aswantour;
  final List<String> detailAswan;
  final List<String> Neshatour;
  final List<String> detailNesha;
  final List<String> gonatour;
  final List<String> detailgona;


  @override
  State<tourguide> createState() => _tourguideState();
}

class _tourguideState extends State<tourguide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
         leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
        title:const Text('Tour Guide') ,
        backgroundColor:Colors.orange[900] ,
      ) ,
      body:GridView.builder(
  itemCount: 14, // number of items in the grid
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisExtent:280,
    mainAxisSpacing:10,
    crossAxisSpacing:5    // number of items per row
  ),
  itemBuilder: (BuildContext context, int index) {
    // build each item in the grid
    return Container(

    
      decoration:BoxDecoration(
        
        color: Colors.grey[200],
        borderRadius:BorderRadius.all(Radius.circular(20)) 
      ) ,
      // set the height of the item
      margin: EdgeInsets.all(5), // set the margin around the item
       // set the background color of the item
      child: Column(
        
      children: [
        ClipRRect(
          borderRadius:BorderRadius.only(
            
            topLeft:Radius.circular(16),
            topRight: Radius.circular(16) ) ,
          child: Image.asset('asset/images/cairo3.jpg')),
          SizedBox(height: 5,),

        Row(
          
          children: [
            Icon(Icons.person_2,color:Colors.orange ,),

            Text('Ahmed Azema',
            style: TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold  
            ),)
          ],
        ),
        SizedBox(height: 5,),
         Row(
         
          children: [
            Icon(Icons.language_rounded,color:Colors.orange ,),
            Text('En,Ar,Fre,',
            style: TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold  
            ),)
          ],
        ),
         SizedBox(height: 5,),
         Row(
          children: [
            Icon(Icons.star,color:Colors.orange ,),
            Text('4.5',
            style: TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold  
            ),)
          ],
        ),

        MaterialButton(
           shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
       
          textColor:Colors.white ,
          color:Colors.orange[900] ,
          onPressed: (){},
        child:Text('Book') ,)
      ],
       

      ),
    );
  },
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







      
//       GridView.builder(
//   itemCount: 10, // number of items in the grid
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2, // number of items per row
//   ),
//   itemBuilder: (BuildContext context, int index) {
//     // build each item in the grid
//     return Container(
//       decoration:BoxDecoration(
//         color: Colors.grey,
//         borderRadius:BorderRadius.all(Radius.circular(15)) 
//       ),
//       height:400, // set the height of the item
//       margin: EdgeInsets.all(8), // set the margin around the item
//        // set the background color of the item
//       child:Column(
//         children: [
//           Image.asset('asset/images/cairo3.jpg'),
//           Row(
//             children: [
//               Icon(Icons.person_2,color:Colors.orange ,),
//               Text('Ahmed Azema',
//               style: TextStyle(
//                 color:Colors.black,
//                 fontWeight:FontWeight.bold  
//               ),)
//             ],
//           ),
//            Row(
//             children: [
//               Icon(Icons.language_rounded,color:Colors.orange ,),
//               Text('En,Ar,Fre,',
//               style: TextStyle(
//                 color:Colors.black,
//                 fontWeight:FontWeight.bold  
//               ),)
//             ],
//           ),
//            Row(
//             children: [
//               Icon(Icons.star,color:Colors.orange ,),
//               Text('4.5',
//               style: TextStyle(
//                 color:Colors.black,
//                 fontWeight:FontWeight.bold  
//               ),)
//             ],
//           )
//         ],
//       )
//     );
//   },
// )

    
      
 );
  }
}

