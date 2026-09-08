import 'package:flutter/material.dart';
import 'package:registation_app/custsom%20widget/app_button.dart';
import 'package:registation_app/custsom%20widget/app_text.dart';
import 'package:registation_app/view/login/login_screen.dart';
import 'package:registation_app/view/registation/widget/app_textfield.dart';

class RegistationScreen extends StatefulWidget {
  const RegistationScreen({super.key});

  @override
  State<RegistationScreen> createState() => _RegistationScreenState();
}

class _RegistationScreenState extends State<RegistationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Registraion")),
      // backgroundColor:Colors.transparent,
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Create Your",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              AppText(
                text: "account's",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                colors: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 10,),
          AppTextField(controller: nameController, hintText: "Enter your name", icon: Icons.person, keybordText: TextInputType.name),
          SizedBox(height: 20),
          AppTextField(controller: emailController, hintText: "Enter email", icon: Icons.email, keybordText: TextInputType.emailAddress),
          SizedBox(height: 20),
          AppTextField(controller: passwordController, hintText: "password", icon: Icons.lock, keybordText: TextInputType.visiblePassword,),
          SizedBox(height: 20,),
          AppTextField(controller: confirmPassword, hintText: "Confirm password", icon: Icons.lock, keybordText: TextInputType.visiblePassword,),
          SizedBox(height: 15,),
          SizedBox(
            height: 50,
              child: AppButon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, text: "Sign in")),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              AppText(text: "Already have and accounts ",fontSize: 15,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, child: AppText(text: "Login")),
            ],
          )
        ],
      ),
    );
  }
}


