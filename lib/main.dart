import 'package:blood_groups_project/Screens/homepage.dart';
import 'package:blood_groups_project/maincontroller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: MainController(),
    );
  }
}


