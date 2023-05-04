// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/Services/services.dart';
import 'package:trainflutter/component/button.dart';
import 'package:trainflutter/constant/routes.dart';

// ignore: camel_case_types
class startpage extends StatefulWidget {
  const startpage({super.key});
  @override
  State<startpage> createState() => _nameState();
}
final pageControllr=PageController();
int currentpage = 0;

List slider = [
  {
    'Text': 'Are you Ready to Discover the World',
    'image': 'asset/images/1.jpg',
    'enablebutton':true,
    
  },
  {'Text': 'We Make your Trip Simpler',
   'image': 'asset/images/2.jpg',
   'enablebutton':true,},

  {'Text': 'The Hols you deserve',
   'image': 'asset/images/3.jpeg',
   'enablebutton':false,}
];

class _nameState extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: PageView.builder(controller: pageControllr,
                onPageChanged: (val) {
                  setState(() {
                  currentpage=val
                  ;
                  });
                },
                itemCount: slider.length,
                itemBuilder: ((context, i) {
                  return imageslider(
                    list: slider[i],
                    mdw: mdw,

                  );
                })))

        /*
      Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: null /* add child content here */,
        ),
        Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Booking Online',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You will esasily book your favourite',
                style: TextStyle(color: Colors.white,fontSize:15 ),
              ),
              Text(
                'trip online',
                style: TextStyle(color: Colors.white,fontSize:15 ),
              ),
              SizedBox(
                height: 40,
              ),
               ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor:Colors.orangeAccent ,
                    padding: EdgeInsets.only(
                        top: 10, left: 30, right: 30, bottom: 10),
                    primary: Colors.orangeAccent.withOpacity(0.70),
                  ),
                  onPressed: (() {
                    Navigator.of(context).pushNamed('login');
                  }),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
             
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                     shadowColor:Colors.orangeAccent ,
                    padding: EdgeInsets.only(
                        top: 10, left: 25, right: 25, bottom: 10),
                    primary: Colors.orangeAccent.withOpacity(0.70),
                  ),
                  onPressed: (() {
Navigator.of(context).pushNamed('signup');

                  }),
                  child: Text(
                    'Signup',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ]),
          ),
        )
      
      ]), */
        );
  }
  
  
}

class imageslider extends StatefulWidget {
  final list;
 
  final mdw;
  const imageslider({super.key, this.list, this.mdw,});

  @override
  State<imageslider> createState() => _imagesliderState();
}

class _imagesliderState extends State<imageslider> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          child: null,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('${widget.list['image']}'), fit: BoxFit.cover),
          )),
      Padding(
        padding: const EdgeInsets.only(top:60, left: 60),
        child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              'Journey Journal',
              style: Theme.of(context).textTheme.headline4,
            )),
      ),
      const SizedBox(
        height: 30,
      ),
      Center(
        child: Text(textAlign:TextAlign.center,
          '${widget.list['Text']}',
          style: const TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(top:500, left: 115),
        child: Container(
          child:widget.list['enablebutton']? MyButton(
            title: 'Next',
            function: () {
             pageControllr.animateToPage(currentpage=currentpage+1,
             duration: const Duration(milliseconds: 250),curve: Curves.bounceIn);
              setState(() {
                
              });

              
            },
          ):Column(
            children: [
              MyButton(
                title:'Signin' ,
                function: (){
                Get.toNamed(AppRoute.login);
                },),
                
                MyButton(
                  title:'Signup' ,
                  function:(){
                    Get.toNamed(AppRoute.signUp);
                  } ,
                )
            ],
          )
          )
        ),
      
  //   AnimatedContainer buildcontrolpageview (index){
  //  return AnimatedContainer(

  //     margin: const EdgeInsets.symmetric(horizontal:10),
  //     duration: const Duration(milliseconds: 500),
  //   width:currentpage==index ? 20 : 5,
  //   height: 5,
  //   decoration:BoxDecoration(color:Colors.red,
  //   borderRadius:BorderRadius.circular(2.5)   ) ,);
  // }
    ]);
  }
}
