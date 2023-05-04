// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';


class bodyhomepage extends StatefulWidget {
  final List<String> imageUrls;
  final List<String> titles;

  const bodyhomepage({super.key, required this.imageUrls, required this.titles});

  @override
  State<bodyhomepage> createState() => _bodyhomepageState();
}

class _bodyhomepageState extends State<bodyhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(    
          children: [
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left:30),
              alignment: Alignment.topLeft,
              child: const Text('View places',
              style:TextStyle(
                fontSize:25, ) ,)),
              const SizedBox(height:10 ,),


            Container(
              width:370 ,
              height:150,
               decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          
         
        ),
              child: CarouselSlider.builder(
              itemCount: widget.imageUrls.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(
                  fit: StackFit.expand,
                  
                  children: [
                    Image.asset(widget.imageUrls[index], fit: BoxFit.cover),
                    Positioned(
                      bottom:0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
                        color: Colors.black54,
                        child: Text(
                          widget.titles[index],
                          style: const TextStyle(color: Colors.white,
                           fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16/9,
                viewportFraction:0.8,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
                      ),
            ),


          //Book Hotel

            const SizedBox(height: 20,),
             InkWell(
              onTap: (){
                Get.toNamed(AppRoute.bookhotel);
              },
               child: Container(
                margin: const EdgeInsets.only(left:30),
                alignment: Alignment.topLeft,
                child: const Text('Book Hotel',
                style:TextStyle(
                  fontSize:25,
                   
                ) ,)),
             ),
              const SizedBox(height:10 ,),
            Container(
              width:370 ,
              height:150,
               decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          
         
        ),
              child: CarouselSlider.builder(
              itemCount: widget.imageUrls.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(
                  fit: StackFit.expand,
      
                  children: [
                    Image.asset('asset/images/hotel0.png', fit: BoxFit.cover),
                    Positioned(
                      bottom:0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
                        color: Colors.black54,
                        child: Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.white ,),
                                Icon(Icons.star,color:Colors.white ,),
      
                              ],
                            ),
                            const Text(
                              'RIMBERIO HOTEL',
                              style: TextStyle(color: Colors.white,
                               fontSize:18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 16/9,
                viewportFraction:0.8,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
          ),
            ),

                //TOUR GUIDE

                const SizedBox(height: 20,),
             InkWell(
              onTap: () {
                Get.toNamed(AppRoute.tourguide);
              },
               child: Container(
                margin: const EdgeInsets.only(left:30),
                alignment: Alignment.topLeft,
                child: const Text('Tour Guide',
                style:TextStyle(
                  fontSize:25,
                   
                ) ,)),
             ),
              const SizedBox(height:10 ,),
            Container(
              width:370 ,
              height:150,
               decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          
         
        ),
              child: CarouselSlider.builder(
              itemCount: widget.imageUrls.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(
                  fit: StackFit.expand,
      
                  children: [
                    Image.asset('asset/images/person2.jpg', fit: BoxFit.cover),
                    Positioned(
                      bottom:0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
                        color: Colors.black54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                             
                              children: const [
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.yellow ,),
                                Icon(Icons.star,color:Colors.white ,),
                                Icon(Icons.star,color:Colors.white ,),
      
                              ],
                            ),
                            const Text(
                              'Ahmed ',
                              style: TextStyle(color: Colors.white,
                               fontSize:25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 16/9,
                viewportFraction:0.8,
                enlargeCenterPage: true,
                //enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
          ),
            ),

            const SizedBox(height: 20,), 


            //ADD PROGRAM

           Center(
          child: Container(
            
            margin: const EdgeInsets.all(10),
            width:350 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Stack(
              
              children: [
                Image.asset(
                  'asset/images/safaritrip.jpg',
                  fit: BoxFit.cover
                ),
                Positioned(
                  bottom: 20,
                  left: 120,
                  child:MaterialButton(
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(15) 
                    ) ,
                    color:Colors.orange[900] ,
                    textColor:Colors.white ,
                    onPressed: (){
                      Get.toNamed(AppRoute.home);
                    },
                  child:Text('Programs',
                  style:TextStyle(
                    fontSize: 20
                  ) ,) ,)
                ),
              ],
            ),
          ),
        ),

        // RATE SERVICES

          const SizedBox(height: 20,),

           Center(
          child: Container(
            
            margin: const EdgeInsets.all(10),
            width:350 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Stack(
              
              children: [
                Image.asset(
                  'asset/images/rate.jpg',
                  fit: BoxFit.fitWidth,
                ),
               Positioned(
                  bottom: 20,
                  left: 100,
                  child:MaterialButton(
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(15) 
                    ) ,
                    color:Colors.orange[900] ,
                    textColor:Colors.white ,
                    onPressed: (){
                      Get.toNamed(AppRoute.Rate);
                    },
                  child:Text('Rate Services',
                  style:TextStyle(
                    fontSize: 20
                  ) ,) ,)
                ),
              ],
            ),
          ),
        ),
               
            // JOIN US
            const SizedBox(height: 20,),
              Center(
          child: Container(
            
            margin: const EdgeInsets.all(10),
            width:350 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Stack(
              
              children: [
                Image.asset(
                  'asset/images/joinus.jpg',
                  fit: BoxFit.fitWidth,
                ),
               Positioned(
                  bottom: 20,
                  left: 120,
                  child:MaterialButton(
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(15) 
                    ) ,
                    color:Colors.orange[900] ,
                    textColor:Colors.white ,
                    onPressed: (){
                      Get.toNamed(AppRoute.home);
                    },
                  child:Text('Join US',
                  style:TextStyle(
                    fontSize: 20
                  ) ,) ,)
                ),
              ],
            ),
          ),
        ),
      
           
            
          ], ),
      ),
    );
    
   
  }
}









// class bodyhomepage extends StatefulWidget {
//   const bodyhomepage({super.key});

//   @override
//   State<bodyhomepage> createState() => _bodyhomepageState();
// }

// class _bodyhomepageState extends State<bodyhomepage> {
//   List imagecar =[
//     'asset/images/giza.png',
//     'asset/images/giza.png',
//     'asset/images/giza.png',
//     'asset/images/giza.png',
//     'asset/images/giza.png'

//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body:
       
//       //  Container(
//       //   margin: EdgeInsets.only(top:30),
//       //   child: Column(
          
//       //     children: [
//       //       Container(
//       //         padding: EdgeInsets.only(left:15,bottom: 10 ),
//       //         alignment:Alignment.topLeft ,
//       //         child: Text(
                
//       //           'View Places',
//       //         style:TextStyle(
              
//       //           fontSize:25,
//       //           fontWeight:FontWeight.bold  
//       //         ) ,),
//       //       ),

//       //       Container(
//       //         width: 350,
//       //         child: CarouselSlider(items:imagecar.map((e) =>ClipRRect(
//       //           borderRadius:BorderRadius.only(topLeft:Radius.circular(20),
//       //           topRight:Radius.circular(20)
//       //            ) ,
//       //           child: Stack(
//       //             fit:StackFit.expand ,
//       //             children: [
//       //               Image.asset(e,
//       //               height:200,
//       //               width: 100,
//       //               fit: BoxFit.cover,),
//       //               Text(e)

//       //           ]),


//       //         ) 
              
              
//       //         ).toList() , options:CarouselOptions(
//       //           autoPlay:false,
//       //           enableInfiniteScroll:false,
//       //           enlargeCenterPage:true,
//       //           height:150,
                
                

//       //            )),
//       //       ),
               
//       //          SizedBox(height: 20,),
//       //           Container(
//       //         padding: EdgeInsets.only(left:15,bottom: 10 ),
//       //         alignment:Alignment.topLeft ,
//       //         child: Text(
                
//       //           'BookHotel',
//       //         style:TextStyle(
              
//       //           fontSize:25,
//       //           fontWeight:FontWeight.bold  
//       //         ) ,),
//       //       ),
            
//       //       Container(
//       //         width: 350,
//       //         child: CarouselSlider(items:imagecar.map((imagecar) =>ClipRRect(
//       //           borderRadius:BorderRadius.only(topLeft:Radius.circular(20),
//       //           topRight:Radius.circular(20)
//       //            ) ,
//       //           child: Stack(
//       //             fit:StackFit.expand ,
//       //             children: [
//       //               Image.asset(imagecar,
                    
//       //               fit: BoxFit.cover,),
//       //               Text(imagecar)

//       //           ]),


//       //         ) 
              
              
//       //         ).toList() , options:CarouselOptions(
//       //           autoPlay:false,
//       //           enableInfiniteScroll:false,
//       //           enlargeCenterPage:true,
//       //           height:150,
                
                

//       //            )),
//       //       )

//       //     ],
//       //   ),
//       // )
      

//     );
//   }
// }