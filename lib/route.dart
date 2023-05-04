




import 'package:dialogflow_grpc/generated/google/cloud/dialogflow/v2/context.pb.dart';
import 'package:flutter/material.dart';
import 'package:trainflutter/auth/login.dart';
import 'package:trainflutter/auth/signup.dart';
import 'package:trainflutter/constant/routes.dart';
import 'package:trainflutter/pages/Bookhotel.dart';
import 'package:trainflutter/pages/Previoustrip.dart';
import 'package:trainflutter/pages/Rate.dart';
import 'package:trainflutter/pages/addprogram.dart';
import 'package:trainflutter/pages/chatbot.dart';
import 'package:trainflutter/pages/home.dart';
import 'package:trainflutter/pages/homepage.dart';
import 'package:trainflutter/pages/profilepage.dart';
import 'package:trainflutter/pages/start.dart';
import 'package:trainflutter/pages/tourguide.dart';
import 'package:trainflutter/pages/tourguideprofile.dart';

import 'pages/tripdetails.dart';

Map<String, Widget Function(BuildContext)> routes={

AppRoute.signUp:(Context) =>const signUp(),
AppRoute.tripdetails:(Context)=>const tripdetails(),
AppRoute.chat:(Context)=> Chat(),
AppRoute.homepage:(Context) =>const homepage(),
AppRoute.home:(Context)=> const home(),
AppRoute.previostrip:(Context)=>const previostrip(), 
AppRoute.startpage:(context) => const startpage(),
AppRoute.login:(context) => const Login(),
AppRoute.Rate:(context) => const ratepage(),
AppRoute.profilepage:(context) => const profilepage(),
AppRoute.addprogram:(context) => const addprogram(),
AppRoute.tourprofile:(context) => const tourprofile(),
AppRoute.tourguide:(context) => const tourguide(
  cairotour: [ 'asset/images/cairo1.jpg',
          'asset/images/cairo2.jpg',
          'asset/images/cairo3.jpg',
           'asset/images/cairo2.jpg',
          'asset/images/cairo3.jpg',
          ],
   detailcairo: [ 'Ahmed ',
          'Mohand ',
          'Mohamed ',
          'Shawki ',
          'Azema ',],
    
   Alextour: [],
    detailAlex: [],
     Aswantour: [],
      detailAswan: [],
       Neshatour: [],
        detailNesha: [],
       gonatour: [], 
        detailgona: []),

        AppRoute.bookhotel:(context) => const bookhotel(
          hotelscairo: [ 
              'asset/images/hotel0.png',
              'asset/images/hotel1.jpg',
              'asset/images/hotel2.jpg',
              'asset/images/hotel3.jpg',
              'asset/images/hotel4.jpg',
],
           title: ['Misr Hotel',
        'Cairo Hotel',
        'Luxor Hotel',
        'Aswan Hotel',
        'Mansoura Hotel'],

          hotelsAswan: [
             'asset/images/tolip.jpg',
          'asset/images/tolip.jpg',
          'asset/images/tolip.jpg',
          'asset/images/tolip.jpg',
          'asset/images/tolip.jpg'
          ], 
          Aswantitle:['Aswan Hotel',
        'Hapi Hotel',
        'Kato Hotel',
        'Citymax Hotel',
        'Tolip Hotel'],
           hotelsAlex: [
             'asset/images/Romance.jpg',
        'asset/images/san.jpg',
        'asset/images/Plaza.jpg',
        'asset/images/jewel.jpg',
        'asset/images/Alex.jpg'

           ], 
            Alextitle: [
        'Romance Hotel',
        'SanStevano Hotel',
        'Plaza Hotel',
        'Jewel Hotel',
        'Alex Hotel'

       ],
       hotelsHur: [
        'asset/images/hur1.avif',
         'asset/images/hur2.avif',
          'asset/images/hur3.avif',
           'asset/images/hur4.avif',
            'asset/images/hur5.avif'
        
       ],
       Hurtitle: [
        'Tolip Hotel',
        'Green Hotel',
        'Hurgada Hotel',
        'Plaza Hotel',
        'ROmance Hotel'
       ],
       hotelssharm: [
            'asset/images/hotel0.png',
              'asset/images/hotel1.jpg',
              'asset/images/hotel2.jpg',
              'asset/images/hotel3.jpg',
              'asset/images/hotel4.jpg',

       ],
       Sharmtitle: [
         'Sharm Hotel',
        'Blue Hotel',
        'House Hotel',
        'Romance Hotel',
        'Kato Hotel'

       ],)


};