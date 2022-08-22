import 'package:flutter/material.dart';
import 'package:xarala1/about.dart';
import 'home.dart';
import 'about.dart';
import 'project.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about':(context)=> MyAbout(),
      'project': (context)=> MyProject(),
          },
  ));
}

