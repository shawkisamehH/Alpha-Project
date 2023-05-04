// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
       padding: EdgeInsets.zero,
        children: [
        UserAccountsDrawerHeader(accountName:
        const Text('Shawki sameh',style:TextStyle(fontSize:25  ) ,),
         accountEmail:const Text('shawkiisameh@gmail.com',style:TextStyle(fontSize:15 ) ,),
         currentAccountPicture:CircleAvatar(
          child: ClipOval(
            child:Image.asset('asset/images/slider1.png',
             fit: BoxFit.cover,) ),
         ) ,
         decoration:const BoxDecoration(
          color:Colors.orangeAccent,
         ),
         ),
         
          
            ListTile(
             title: const Text('MyProfile',
             style:TextStyle( fontSize: 20,fontStyle:FontStyle.italic ) ,),
            leading: Icon(Icons.person,color:Colors.orange[900] ,),
            onTap: () {
               Get.toNamed(AppRoute.profilepage);
            },
             hoverColor: Colors.blue.withOpacity(0.5),
             
            
           ),
         
         const Divider(),
          ListTile(
           title: const Text('Book Hotels',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
           leading: Icon(Icons.add_home_sharp,color:Colors.orange[900] ,),
          onTap: () {
              Get.toNamed(AppRoute.bookhotel);
          },
         ),
         const Divider(),
         
          ListTile(
          title: const Text('Add Program',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.add_sharp,color:Colors.orange[900] ,),
          onTap: () {
               Get.toNamed(AppRoute.addprogram);
          },
         ),
           const Divider(),
         
          ListTile(
          title: const Text('Tour Guide',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.person_2,color:Colors.orange[900] ,),
          onTap: () {
              Get.toNamed(AppRoute.tourguide);
          },
         ),
         const Divider(),
          ListTile(
          title: const Text('Rate Services',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.rate_review_outlined,color:Colors.orange[900] ,),
          onTap: () {
              Get.toNamed(AppRoute.Rate);
          },
         ),
        
         const Divider(),
          ListTile(
          title: const Text('Previous Trip',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.trip_origin,color:Colors.orange[900] ,),
          onTap: () {
                Get.toNamed(AppRoute.previostrip);
          },
         ),
         const Divider(),
          ListTile(
          title: const Text('Contact Us',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.mail,color:Colors.orange[900] ,),

          onTap: () async {
              await launchUrl(Uri.parse('mailto:shawkiisameh16@gmail.com?subject=<subject>&body=<body>'));
          },
         ),
         const Divider(),
          
          ListTile(
          title: const Text('Log out',
           style:TextStyle(
            fontSize: 20,fontStyle:FontStyle.italic ) ,),
             leading: Icon(Icons.exit_to_app_outlined,color:Colors.orange[900] ,),
          onTap: () {
               print('shawki');
          },
         ),
      ]),

    );
  }
}