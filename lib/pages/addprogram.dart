// ignore_for_file: unused_import, camel_case_types, prefer_typing_uninitialized_variables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/pages/tourguide.dart';


class addprogram extends StatefulWidget {
  const addprogram({super.key});
 
  

  @override
  State<addprogram> createState() => _addprogramState();
}

class _addprogramState extends State<addprogram> {
   var selectcity;
   var selecthotel;
    var selectroom;
    DateTime date=DateTime.now();
    DateTime dateleave=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Get.toNamed(AppRoute.homepage);
    }),
        title:const Text('Add Program') ,
        backgroundColor:Colors.orange[900] ,
      ) ,
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20,vertical:70 ),
         child: Column(
           children: [
             

               InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.homepage);
                },
                child: Container(
                  height: 80,
                  decoration:BoxDecoration(
                    color:Colors.grey ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Text('Choose City',
                      style:TextStyle(
                        fontSize:20,
                        color: Colors.black45 
                      ) ,),
                      Icon(Icons.location_city_rounded,color:Colors.orange[900] ,)
                    ],
                  ) ,
                ),
               ),
            
              const SizedBox(height: 20,),
               InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.bookhotel);
                },
                child: Container(
                  height: 80,
                  decoration:BoxDecoration(
                    color:Colors.grey ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Text('Choose Hotel',
                      style:TextStyle(
                        fontSize:20,
                        color: Colors.black45 
                      ) ,),
                      Icon(Icons.home,color:Colors.orange[900] ,)
                    ],
                  ) ,
                ),
               ),
     
     
     
          
           const SizedBox(height: 20,),
     
           //Room
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey[300],
             
              height:80 ,
              child:DropdownButton(
                icon:Icon(Icons.person,color:Colors.orange[900] ,) ,
                hint:const Text('Room',style:TextStyle(fontSize:20 ) ,),
                isExpanded: true,
                underline:Divider(thickness:0 ,color:Colors.grey[300] ,) ,
                dropdownColor:Colors.grey[500] ,
                items:[
                  'Single','Double','Triple']
                  .map((e)=>DropdownMenuItem(
                    child:Text('$e Hotel ',style:const TextStyle(fontSize:20  ) ,),
                    value: e,)).toList(),
                 onChanged:(val){
                    setState(() {
                     selectroom=val;
                    });
                   // selecthotel:val ;
                 },
                 value: selectroom,
                 )
                 
            ),
            const SizedBox(height: 20,),
     
            //Time   
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
     
     
                 //Time
                Container(
                  alignment:Alignment.centerLeft ,
                 width: 160,
                  
                  
                  child:Column(
                    children: [
                      Container(
                      
                        color:Colors.orange[900],
                        child: Text('${date.day}/${date.month}/${date.year}',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),),
                      ),
                     MaterialButton(
                      color:Colors.grey ,
                      shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15) 
                      ) ,
                      child:Text('Time to Come',
                      style:TextStyle(
                        fontSize: 20,
                        color:Colors.black45 
                      ) ,) 
                      ,
                      onPressed: () async{
                        DateTime? newDate = await showDatePicker(context: context,
                         initialDate: date,
                          firstDate:DateTime(2022),
                           lastDate: DateTime(2050)
                           );
                           if(newDate==null)return ;
                              setState(() {
                                date=newDate;
                              });
                      }),
                       
                    ],
                  ) ,
                ),
                  Container(
                  alignment:Alignment.centerLeft ,
                 width: 160,
                  
                  
                  child:Column(
                    children: [
                      Container(
                        color:Colors.orange[900],
                        child: Text('${dateleave.day}/${dateleave.month}/${dateleave.year}',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),),
                      ),
                      MaterialButton(
                        color:Colors.grey ,
                        shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15) 
                        ) ,
                        child:Text('Time to Leave',
                        style:TextStyle(
                          fontSize:20,
                          color:Colors.black45,  
                        ) ,) ,
                      
                      onPressed: () async{
                        DateTime? newDates = await showDatePicker(context: context,
                         initialDate: dateleave,
                          firstDate:DateTime(2022),
                           lastDate: DateTime(2050)
                           );
                           if(newDates==null)return ;
                              setState(() {
                                dateleave=newDates;
                              });
                      }),
                      
                    ],
                  ) ,
                ),
              ],
            ),
            const SizedBox(height: 20,),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.tourguide);
                },
                child: Container(
                  height: 80,
                  decoration:BoxDecoration(
                    color:Colors.grey ,
                    borderRadius:BorderRadius.circular(15) 
                  ) ,
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Text('Tour Guide',
                      style:TextStyle(
                        fontSize:20,
                        color: Colors.black45 
                      ) ,),
                      Icon(Icons.person_2_rounded,color:Colors.orange[900] ,)
                    ],
                  ) ,
                ),
               ),
     
              const SizedBox(height:40,),
             Container(
              width:150 ,
               child: MaterialButton(
                color:Colors.deepOrange ,
                textColor:Colors.white ,
                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ) ,
                onPressed: (){},
               child:Text('Book',
               style:TextStyle(
                fontSize:20 
               ) ,) ,),
             )
         ]),
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