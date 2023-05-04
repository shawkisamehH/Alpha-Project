// ignore: duplicate_ignore
// ignore_for_file: file_names, camel_case_types, duplicate_ignore, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/component/bookcard.dart';
import 'package:trainflutter/constant/routes.dart';


class bookhotel extends StatefulWidget {

  const bookhotel({
    super.key, required this.hotelscairo, required this.title,
     required this.hotelsAswan, required this.Aswantitle,
      required this.hotelsAlex, required this.Alextitle,
       required this.hotelsHur, required this.Hurtitle, 
       required this.hotelssharm, required this.Sharmtitle});

   final List<String> hotelscairo;
  final List<String> title;
   final List<String> hotelsAswan;
  final List<String> Aswantitle;
   final List<String> hotelsAlex;
  final List<String> Alextitle;
   final List<String> hotelsHur;
  final List<String> Hurtitle;
   final List<String> hotelssharm;
  final List<String> Sharmtitle;
  
  

  @override
  State<bookhotel> createState() => _bookhotelState();
}


  



// ignore: camel_case_types
class _bookhotelState extends State<bookhotel> {
  List<String> images=[
   'asset/images/hotel1.jpg',
   'asset/images/hotel2.jpg',
   'asset/images/hotel3.jpg',
   'asset/images/hotel4.jpg',
   'asset/images/jewel.jpg',
   'asset/images/Plaza.jpg',
   'asset/images/Romance.jpg',
   'asset/images/san.jpg',
   'asset/images/tolip.jpg',
   'asset/images/hotel1.jpg',


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
            leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
          title:const Text(' Hotels',style:TextStyle(
           
          ) ,) ,
          backgroundColor: Colors.orange[900],
         ),
        body:
        Padding(
          padding:
           EdgeInsets.symmetric(vertical:15,horizontal:24  ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start ,
            crossAxisAlignment:CrossAxisAlignment.start ,
            children:  [
            Text('Book your Hotel',
            style:TextStyle(

              fontSize:26,
              color:Colors.orange,
              fontWeight:FontWeight.w600,   
            ) , ),
             Text('Pick your destination',
            style:TextStyle(
              fontSize:20,
              color:Colors.black,
              fontWeight:FontWeight.w300, ),),
            SizedBox(height: 20,),

            Material(
              elevation:10,
              borderRadius:BorderRadius.all(Radius.circular(30))  ,
              shadowColor:Colors.orangeAccent ,
              child: TextField(
                textAlign:TextAlign.start ,
                textAlignVertical:TextAlignVertical.center ,
                decoration:InputDecoration(
                  hintText:'Search for Hotel',
                  prefixIcon:Icon(Icons.search,
                  color:Colors.orange ,) ,
                  border:InputBorder.none,
                   
                ) ,
              ),
            ),
            SizedBox(height: 30,),
           DefaultTabController(
            length: 3,
  child: Column(
    children: [
      TabBar(
        indicatorColor: Colors.orangeAccent,
        unselectedLabelColor: Colors.black,
        labelColor: Colors.orange,
        labelPadding:EdgeInsets.symmetric(horizontal:8) ,
        tabs: const [
          Tab(
            text: 'Trending',
          ),
          Tab(
            text: 'Promotions',
          ),
          Tab(
            text: 'Favorites',
          )
        ],
      ),
      SizedBox(height: 50,),
      Container(
        height: 350,
        child:TabBarView(
          children: [
            Container(
              child:
               ListView(
                scrollDirection:Axis.horizontal ,
                children:  [
                bookcard(
                   images[6], 'LuxaryHotel','Cairoline' , 3),
                     bookcard(
                   images[8], 'Plaza Hotel','Alexline' , 4),
                     bookcard(
                   images[9], 'Safari Hotel','Aswanline' , 3),
                     bookcard(
                   images[3 ], 'Romance Hotel','Luxorline' , 4),

                  

                ]),),
                 Container(
              child:
               ListView(
                scrollDirection:Axis.horizontal ,
                children:  [
                    bookcard(
                   images[4], 'Tolip Hotel','Gizaline' , 4),
                     bookcard(
                   images[2], 'San Hotel','Sharmline' , 3),
                     bookcard(
                   images[7], 'Jewel Hotel','Gonaline' , 4),
                     bookcard(
                   images[5], 'Ramada Hotel','Mansouraline' , 2),


                ]),),
                 Container(
              child:
               ListView(
                scrollDirection:Axis.horizontal ,
                children:  []),)


        ]) ,
      )
     
    ],
  ),
)









        
        
          ],),
        ) ,
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


       
        
        // SingleChildScrollView(
        //   child: Column(children: [
        //                 const SizedBox(height: 20),
        
        
        //               //CAIRO HOTELS
        //       Container(
        //         margin: const EdgeInsets.only(left:30),
        //         alignment: Alignment.topLeft,
        //         child: const Text('Cairo Hotels',
        //         style:TextStyle(
        //           fontSize:25, ) ,)),
        //         const SizedBox(height:10 ,),
        
        
        //       Container(
        //         width:370 ,
        //         height:150,
        //          decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16.0),
            
           
        //   ),
        //         child: CarouselSlider.builder(
        //         itemCount: widget.hotelscairo.length,
        //         itemBuilder: (BuildContext context, int index, int realIndex) {
        //           return Stack(
        //             fit: StackFit.expand,
                    
        //             children: [
        //               Image.asset(widget.hotelscairo[index], fit: BoxFit.cover),
        //               Positioned(
        //                 bottom:0,
        //                 left: 0,
        //                 right: 0,
        //                 child: Container(
        //                   padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
        //                   color: Colors.black54,
        //                   child: Text(
        //                     widget.title[index],
        //                     style: const TextStyle(color: Colors.white,
        //                      fontSize: 25),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           );
        //         },
        //         options: CarouselOptions(
        //           autoPlay: true,
        //           aspectRatio: 16/9,
        //           viewportFraction:0.8,
        //           enlargeCenterPage: true,
        //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
        //         ),
        //                 ),
        //       ),
        //         const SizedBox(height:20 ,),
        //         Container(
        //         margin: const EdgeInsets.only(left:30),
        //         alignment: Alignment.topLeft,
        //         child: const Text('Aswan Hotels',
        //         style:TextStyle(
        //           fontSize:25, ) ,)),
        //         const SizedBox(height:10 ,),
        
        
        //       Container(
        //         width:370 ,
        //         height:150,
        //          decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16.0),
            
           
        //   ),
        //         child: CarouselSlider.builder(
        //         itemCount: widget.hotelsAswan.length,
        //         itemBuilder: (BuildContext context, int index, int realIndex) {
        //           return Stack(
        //             fit: StackFit.expand,
                    
        //             children: [
        //               Image.asset(widget.hotelsAswan[index], fit: BoxFit.cover),
        //               Positioned(
        //                 bottom:0,
        //                 left: 0,
        //                 right: 0,
        //                 child: Container(
        //                   padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
        //                   color: Colors.black54,
        //                   child: Text(
        //                     widget.Aswantitle[index],
        //                     style: const TextStyle(color: Colors.white,
        //                      fontSize: 25),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           );
        //         },
        //         options: CarouselOptions(
        //           autoPlay: true,
        //           aspectRatio: 16/9,
        //           viewportFraction:0.8,
        //           enlargeCenterPage: true,
        //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
        //         ),
        //                 ),
        //       ),
        
        //         const SizedBox(height:20 ,),
        //         Container(
        //         margin: const EdgeInsets.only(left:30),
        //         alignment: Alignment.topLeft,
        //         child: const Text('Alexandria Hotels',
        //         style:TextStyle(
        //           fontSize:25, ) ,)),
        //         const SizedBox(height:10 ,),
        
        
        //       Container(
        //         width:370 ,
        //         height:150,
        //          decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16.0),
            
           
        //   ),
        //         child: CarouselSlider.builder(
        //         itemCount: widget.hotelsAlex.length,
        //         itemBuilder: (BuildContext context, int index, int realIndex) {
        //           return Stack(
        //             fit: StackFit.expand,
                    
        //             children: [
        //               Image.asset(widget.hotelsAlex[index], fit: BoxFit.cover),
        //               Positioned(
        //                 bottom:0,
        //                 left: 0,
        //                 right: 0,
        //                 child: Container(
        //                   padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
        //                   color: Colors.black54,
        //                   child: Text(
        //                     widget.Alextitle[index],
        //                     style: const TextStyle(color: Colors.white,
        //                      fontSize: 25),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           );
        //         },
        //         options: CarouselOptions(
        //           autoPlay: true,
        //           aspectRatio: 16/9,
        //           viewportFraction:0.8,
        //           enlargeCenterPage: true,
        //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
        //         ),
        //                 ),
        //       ),
        //                const SizedBox(height:20 ,),
        //         Container(
        //         margin: const EdgeInsets.only(left:30),
        //         alignment: Alignment.topLeft,
        //         child: const Text('Hurdaga Hotels',
        //         style:TextStyle(
        //           fontSize:25, ) ,)),
        //         const SizedBox(height:10 ,),
        
        
        //       Container(
        //         width:370 ,
        //         height:150,
        //          decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16.0),
            
           
        //   ),
        //         child: CarouselSlider.builder(
        //         itemCount: widget.hotelsHur.length,
        //         itemBuilder: (BuildContext context, int index, int realIndex) {
        //           return Stack(
        //             fit: StackFit.expand,
                    
        //             children: [
        //               Image.asset(widget.hotelsHur[index], fit: BoxFit.cover),
        //               Positioned(
        //                 bottom:0,
        //                 left: 0,
        //                 right: 0,
        //                 child: Container(
        //                   padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
        //                   color: Colors.black54,
        //                   child: Text(
        //                     widget.Hurtitle[index],
        //                     style: const TextStyle(color: Colors.white,
        //                      fontSize: 25),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           );
        //         },
        //         options: CarouselOptions(
        //           autoPlay: true,
        //           aspectRatio: 16/9,
        //           viewportFraction:0.8,
        //           enlargeCenterPage: true,
        //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
        //         ),
        //                 ),
        //       ),
        //            const SizedBox(height:20 ,),
        //         Container(
        //         margin: const EdgeInsets.only(left:30),
        //         alignment: Alignment.topLeft,
        //         child: const Text('Sharm ElShekih',
        //         style:TextStyle(
        //           fontSize:25, ) ,)),
        //         const SizedBox(height:10 ,),
        
        
        //       Container(
        //         width:370 ,
        //         height:150,
        //          decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16.0),
            
           
        //   ),
        //         child: CarouselSlider.builder(
        //         itemCount: widget.hotelssharm.length,
        //         itemBuilder: (BuildContext context, int index, int realIndex) {
        //           return Stack(
        //             fit: StackFit.expand,
                    
        //             children: [
        //               Image.asset(widget.hotelssharm[index], fit: BoxFit.cover),
        //               Positioned(
        //                 bottom:0,
        //                 left: 0,
        //                 right: 0,
        //                 child: Container(
        //                   padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
        //                   color: Colors.black54,
        //                   child: Text(
        //                     widget.Sharmtitle[index],
        //                     style: const TextStyle(color: Colors.white,
        //                      fontSize: 25),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           );
        //         },
        //         options: CarouselOptions(
        //           autoPlay: true,
        //           aspectRatio: 16/9,
        //           viewportFraction:0.8,
        //           enlargeCenterPage: true,
        //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
        //         ),
        //                 ),
        //       ),
        //   ],),
        // )


    );
  }
}