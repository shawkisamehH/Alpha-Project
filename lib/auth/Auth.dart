import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trainflutter/auth/login.dart';
import 'package:trainflutter/pages/homepage.dart';


class Auth extends StatelessWidget {
  const Auth
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream:FirebaseAuth.instance.authStateChanges() ,
      builder: (context, snapshot){
        if(snapshot.hasData){
            return homepage();
        }else{
             return Login();
        }
      } 
      ,),
    );
  }
}