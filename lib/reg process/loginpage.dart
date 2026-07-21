import 'package:flutter/material.dart';
import 'package:registation_ui/welcome_screen.dart';
import 'package:registation_ui/reg%20process/revocer_passworld.dart';
import 'package:registation_ui/reg%20process/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController passworld = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
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
          Text("Let's sing in",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
              letterSpacing: 1.2
          ),),
          SizedBox(height: 40,),
          Column(
            children: [
              TextField(  // use Custom TextField
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
                controller: passworld,
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RecoverPassword()));
              },
                child: Text("Recover Password",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),),
              )
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                  child: Text("Sing in",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10,),
              Container(
                height: 1,
                width: 80,
                color: Colors.black,
              ),
              SizedBox(width: 8,),
              Text("or continue with",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.5),
                letterSpacing: 2,
              ),),
              SizedBox(width: 8,),
              Container(
                height: 1,
                width: 80,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Column(
                children: [
                  TextButton(onPressed: (){

                  }, child: Image.network(
                      height: 35,
                      width: 40,
                      fit: BoxFit.fill,
                      "https://img.icons8.com/color/1200/google-logo.jpg"
                  ),
                  ),
                  Text("Google",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
                ],
              ),
              Column(

                children: [
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){

                  }, child: Image.network(
                      height: 35,
                      width: 40,
                      fit: BoxFit.fill,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZaNJMHMsFUJnsIWGSkJFxniZ5y1_56C85p_qA0abCa1obE8mH_pw-Wfs&s=10"
                  ),
                  ),
                  Text("Facebook",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
                ],
              ),
              Column(
                children: [
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){

                  }, child: Image.network(
                      height: 35,
                      width: 40,
                      fit: BoxFit.fill,
                      "https://cdn-icons-png.flaticon.com/512/25/25231.png"
                  ),
                  ),
                  Text("Github",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont't have an account ?",style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
              },
                  child: Text("Sing Up!",style: TextStyle(
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
