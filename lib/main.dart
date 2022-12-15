import 'package:flutter/material.dart';
import 'package:project_1/pages/Home.dart';
import 'package:project_1/pages/practice.dart';
import 'package:project_1/pages/textin.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  routes: {
    '/home' : (context) => Home(),
    '/practice':(context) => Practice(),
    '/text' : (context) => Textin(),
  },

));



