// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routes.dart';

class previostrip extends StatelessWidget {
  const previostrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
         elevation:20,
          backgroundColor:Colors.orange[900] ,
          title:Text('Previos Trips') ,
         ),
         
         body:
         
         Container(
          padding:EdgeInsets.all(10) ,
           child: Column(
            
            children: [
              SizedBox(height:25 ,),
              
                 Container(
                  
                  decoration:BoxDecoration(
                    color:Colors.grey[300] ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
              
               
                
                width:double.infinity,
                height:120,
                child:Column(
                  
                  children: [
                    Container(
                      
                      padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Hurgada',
                            style: TextStyle(
                              fontSize:20 ,
                              fontWeight:FontWeight.bold, 
                            ),),
                          ),
                              MaterialButton(
                                textColor:Colors.white ,
                                color:Colors.orange[900] ,
                                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
                                onPressed:(){},
                              child:Text('Reebook') ,)
                        ],
                      ),
                    ),
                    SizedBox(height:13,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Text('Date:07 Feb 23,Tue',
                        style:TextStyle(color:Colors.black87 ,fontWeight:FontWeight.w700 ) ,),
                         Text('9 Days',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('Tour Guide:Seleem',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('8 Places',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                    
                      ],
                    ),
                   
                  ],
                ),),
                SizedBox(height:20 ,),
              
                    Container(
              decoration:BoxDecoration(
                    color:Colors.grey[300] ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
              
               
                
                width:double.infinity,
                height:120,
                child:Column(
                  
                  children: [
                    Container(
                      padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Cairo',
                            style: TextStyle(
                              fontSize:20 ,
                              fontWeight:FontWeight.bold, 
                            ),),
                          ),
                               MaterialButton(
                                textColor:Colors.white ,
                                color:Colors.orange[900] ,
                                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
                                onPressed:(){},
                              child:Text('Reebook') ,)
                        ],
                      ),
                    ),
                    SizedBox(height:13,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Text('Date:07 Feb 23,Tue',
                        style:TextStyle(color:Colors.black87 ,fontWeight:FontWeight.w700 ) ,),
                         Text('6 Days',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('Tour Guide:Ahmed',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('6 Places',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                    
                      ],
                    ),
                   
                  ],
                ),),
                  SizedBox(height: 20,),
                     Container(
               decoration:BoxDecoration(
                    color:Colors.grey[300] ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
              
               
                
                width:double.infinity,
                height:120,
                child:Column(
                  
                  children: [
                    Container(
                      padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Alex',
                            style: TextStyle(
                              fontSize:20 ,
                              fontWeight:FontWeight.bold, 
                            ),),
                          ),
                               MaterialButton(
                                textColor:Colors.white ,
                                color:Colors.orange[900] ,
                                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
                                onPressed:(){},
                              child:Text('Reebook') ,)
                        ],
                      ),
                    ),
                    SizedBox(height:13,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Text('Date:07 Feb 23,Tue',
                        style:TextStyle(color:Colors.black87 ,fontWeight:FontWeight.w700 ) ,),
                         Text('9 Days',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('Tour Guide:Samir',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('4 Places',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                    
                      ],
                    ),
                   
                  ],
                ),),
                  SizedBox(height:20,),
                      Container(
              decoration:BoxDecoration(
                    color:Colors.grey[300] ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
              
               
                
                width:double.infinity,
                height:120,
                child:Column(
                  
                  children: [
                    Container(
                      padding: EdgeInsets.all( 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Aswan',
                            style: TextStyle(
                              fontSize:20 ,
                              fontWeight:FontWeight.bold, 
                            ),),
                          ),
                               MaterialButton(
                                textColor:Colors.white ,
                                color:Colors.orange[900] ,
                                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
                                onPressed:(){},
                              child:Text('Reebook') ,)
                        ],
                      ),
                    ),
                    SizedBox(height:13,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Text('Date:07 Feb 23,Tue',
                        style:TextStyle(color:Colors.black87 ,fontWeight:FontWeight.w700 ) ,),
                         Text('7 Days',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('Tour Guide:Shawki',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                         Text('8 Places',
                        style:TextStyle(color:Colors.black87,fontWeight:FontWeight.w700  ) ,),
                    
                      ],
                    ),
                   
                  ],
                ),),
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