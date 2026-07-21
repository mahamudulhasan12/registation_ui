import 'package:flutter/material.dart';
import 'package:registation_ui/reg%20process/loginpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }, icon:Icon(Icons.arrow_back)
        ),
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
          Text("Let's sign up",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
              letterSpacing: 1.2
          ),),
          SizedBox(height: 40,),
          Column(
            children: [
              TextField(

                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,size: 30,),
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0.5,color: Colors.black.withOpacity(0.5))
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(

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
                  hintText: "Password",
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
                  hintText: "Confirm password",
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
                  child: Text("Sign Up",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont't have an account ?",style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
                  child: Text("Log In!",style: TextStyle(
                      fontSize: 15,
                      color: Colors.red
                  ),)
              )
            ],
          ),
        ],
      ),
    );
  }
}
