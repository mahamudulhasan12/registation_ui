import 'package:flutter/material.dart';

import 'package:registation_app/view/login/login_screen.dart';
import 'package:registation_app/view/registation/registation_screen.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(brightness: Brightness.dark),
      color: Colors.white,
      home: LoginScreen(),
    );
  }
}
