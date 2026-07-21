import 'package:flutter/material.dart';
import 'package:registation_ui/reg%20process/loginpage.dart';

import '../screen/welcome_screen.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
      ),
      body: ListView(
        padding: EdgeInsetsGeometry.all(15),
        children: [
          SizedBox(height: 10,),
          Text("Wellcome Back.",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5
          ),),
          Text("Let's Recover Password",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
              letterSpacing: 1.2
          ),),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0.5,color: Colors.black.withOpacity(0.5))
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(

                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "New Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 0.5,color: Colors.black.withOpacity(0.5))
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(

                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 0.5,color: Colors.black.withOpacity(0.5))
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent,
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                  child: Text("Submit",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
