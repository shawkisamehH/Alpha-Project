// import 'package:dialogflow_flutter/language.dart';
import 'package:flutter/material.dart';
import 'package:trainflutter/Services/services.dart';
import 'package:trainflutter/localizations/changelocal.dart';
import 'package:trainflutter/localizations/transliation.dart';
//import 'package:trainflutter/pages/chatbot.dart';

import 'package:get/get.dart';  
import 'package:trainflutter/pages/lang.dart';
import 'package:trainflutter/route.dart';


void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices(); 
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   LocaleController controller= Get.put(LocaleController()); 

    return GetMaterialApp(
      translations:MyTraslation() ,
      debugShowCheckedModeBanner: false,
      locale:controller.language ,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline4:TextStyle(
            color:Colors.orangeAccent,fontSize:80,
            fontWeight:FontWeight.bold ) 
        ) 
      ),
      home:const Language(),
       routes:routes,
       // {
      //   'startpage':(context) =>  const startpage(),
      //  "login":(context) =>  const Login(),
      //  'signUp':(context) =>  const signUp(),
      //  'Rate':(context) => const ratepage(),
      //  'tourprofile':(context) =>  const tourprofile( ),
      //  'homepage':(context) => const homepage(),
      //  'profilepage':(context) => const profilepage(),
      //  'previostrip':(context) => const previostrip(),
      //  'addprogram':(context) =>  const addprogram(),
      //  'tourguide':(context) =>  const tourguide(
      //   cairotour: [
      //     'asset/images/cairo1.jpg',
      //     'asset/images/cairo2.jpg',
      //     'asset/images/cairo3.jpg',
      //      'asset/images/cairo2.jpg',
      //     'asset/images/cairo3.jpg',
          
      //   ],
      //   detailcairo: [
      //     'Ahmed ',
      //     'Mohand ',
      //     'Mohamed ',
      //     'Shawki ',
      //     'Azema ',

      //   ],
      //   Alextour: [],
      //   detailAlex: [],
      //   Neshatour: [],
      //   detailNesha: [],
      //   Aswantour: [],
      //   detailAswan: [],
      //   gonatour: [],
      //   detailgona: [],
      //  ),
      //  //'chat':(context) =>  Chat(),
       
      //  'bookhotel':(context) => const  bookhotel(
      //   hotelscairo: [
              
      //         'asset/images/hotel0.png',
      //         'asset/images/hotel1.jpg',
      //         'asset/images/hotel2.jpg',
      //         'asset/images/hotel3.jpg',
      //         'asset/images/hotel4.jpg',

      //  ],
      //  title:  [
      //   'Misr Hotel',
      //   'Cairo Hotel',
      //   'Luxor Hotel',
      //   'Aswan Hotel',
      //   'Mansoura Hotel'

      //  ],
      //   hotelsAswan: [
      //     'asset/images/tolip.jpg',
      //     'asset/images/tolip.jpg',
      //     'asset/images/tolip.jpg',
      //     'asset/images/tolip.jpg',
      //     'asset/images/tolip.jpg'
      //    ],
      //  Aswantitle: [
      //   'Aswan Hotel',
      //   'Hapi Hotel',
      //   'Kato Hotel',
      //   'Citymax Hotel',
      //   'Tolip Hotel'

      //  ],
      //  hotelsAlex: [
      //   'asset/images/Romance.jpg',
      //   'asset/images/san.jpg',
      //   'asset/images/Plaza.jpg',
      //   'asset/images/jewel.jpg',
      //   'asset/images/Alex.jpg'


      //  ],
      //  Alextitle: [
      //   'Romance Hotel',
      //   'SanStevano Hotel',
      //   'Plaza Hotel',
      //   'Jewel Hotel',
      //   'Alex Hotel'

      //  ],
      //  hotelsHur: [
      //   'asset/images/hur1.avif',
      //    'asset/images/hur2.avif',
      //     'asset/images/hur3.avif',
      //      'asset/images/hur4.avif',
      //       'asset/images/hur5.avif'
        
      //  ],
      //  Hurtitle: [
      //   'Tolip Hotel',
      //   'Green Hotel',
      //   'Hurgada Hotel',
      //   'Plaza Hotel',
      //   'ROmance Hotel'
      //  ],
      //  hotelssharm: [
      //       'asset/images/hotel0.png',
      //         'asset/images/hotel1.jpg',
      //         'asset/images/hotel2.jpg',
      //         'asset/images/hotel3.jpg',
      //         'asset/images/hotel4.jpg',

      //  ],
      //  Sharmtitle: [
      //    'Sharm Hotel',
      //   'Blue Hotel',
      //   'House Hotel',
      //   'Romance Hotel',
      //   'Kato Hotel'

      //  ],
      //  ),
       
      // }, 
    );  
  }
  
  
  
  
}



