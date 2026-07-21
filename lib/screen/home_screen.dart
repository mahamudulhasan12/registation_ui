import 'package:flutter/material.dart';
import 'package:registation_ui/custom%20widget/custom_appbar.dart';
import 'package:registation_ui/custom%20widget/my_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(Title: Text("View Note"),style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,color: Colors.white
      ),colors: Colors.blue,),
      body: Center(
        child:MyText(text: "Mahamuudl Hasan",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
        ),)
      ),
    );
  }
}
