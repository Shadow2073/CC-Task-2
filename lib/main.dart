import 'package:flutter/material.dart';
import 'package:project_1/pages/Home.dart';
import 'package:project_1/pages/practice.dart';
import 'package:project_1/pages/textin.dart';
import 'package:firebase_core/firebase_core.dart';

 Future main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

   runApp(MaterialApp(
     home: Home(),
     routes: {
       '/home' : (context) => Home(),
       '/practice':(context) => Practice(),
       '/text' : (context) => Textin(),
     },

   ));
 }



