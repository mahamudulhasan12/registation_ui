import 'package:flutter/material.dart';
import 'package:registation_ui/reg%20process/loginpage.dart';
import 'package:registation_ui/reg%20process/sign_up_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome Page👋",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontStyle: FontStyle.normal,
          letterSpacing: 2,
        ),),
        // centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsetsGeometry.all(5),
        children: [
          // SizedBox(height: 5,),
          Center(
            child: Container(

              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
              child: Image.network(
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkYZ_mfe45KnPvyvJAqEO5bN2Cm5203NID1_Rb2MaUBfGXuDVc"
              ),
            )
          ),
          SizedBox(height: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enterprise Team",style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1,
              ),),
              Text("Management",style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("With an extensive menu prepared by taiented",style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.5),
                letterSpacing: 1,
              ),),
              Text("chefs,fresh quality foold",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.5),
                letterSpacing: 1,
                
              ),),
            ],
          ),
          SizedBox(height: 80,),
          Container(
            height: 55,
            width: double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.redAccent,
            ),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
            },
              child: Text("Sing up",style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 55,
            width: double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1,color: Colors.black)
            ),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
              child: Text("Already have an account",style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6)
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
