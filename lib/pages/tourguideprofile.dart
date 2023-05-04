// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class tourprofile extends StatefulWidget {

 const  tourprofile({super.key, } );
  
  @override
  State<tourprofile> createState() => _tourprofileState();
}
class _tourprofileState extends State<tourprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        title:Text('Profile') ,

       ), 
       body: Column(
        
        children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:60,horizontal:100  ),
                child: CircleAvatar(
                  
                 radius:90,
                            backgroundImage:AssetImage('asset/images/person2.jpg')
                ),),
                Container(
                  margin:EdgeInsets.all(10) ,
                  alignment:Alignment.center ,
                  color:Colors.grey[300],
                  height:50 ,
                  width:double.infinity ,
                  child: Text('Ahmed Mohamed',
                  style:TextStyle(
                    fontSize:25 
                  ) , ), ),
                  SizedBox(height:20),
                  Text('About Me',
                  style:TextStyle(
                    color:Colors.orange[900] ,
                    fontSize:30 
                  ) ,),
                  SizedBox(height: 30,),
                  Container(
                    child: Column(
                      children: [
                        Text('Age:25',style:TextStyle(fontSize:20 ) ,),
                        Divider(),
                        Text('Eduction : Mansoura University',style:TextStyle(fontSize:20 )),
                        Divider(),
                        Text('Experinece: 3 Years',style:TextStyle(fontSize:20 )),
                        Divider(),
                        Text('Language: Arabic-English-French',style:TextStyle(fontSize:20 )),
                        Divider(),
                        Text('Rate: 4.0',style:TextStyle(fontSize:20 ))
                      ],
                    ),
                  )
       ]),

    );
  }
}