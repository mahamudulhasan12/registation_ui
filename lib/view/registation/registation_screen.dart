import 'package:flutter/material.dart';

class RegistationScreen extends StatefulWidget {
  const RegistationScreen({super.key});

  @override
  State<RegistationScreen> createState() => _RegistationScreenState();
}

class _RegistationScreenState extends State<RegistationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Registraion"),
      ),
      // backgroundColor:Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,right: 135,top: 65,bottom: 140),
            child: Text("Create\n Acount",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 35,
            ),),

          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                left: 35,
                right: 35,
              ),
              child: Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0.5,color: Colors.grey)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextField(
                    controller: confirmPassword,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Confirm password",
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sing In",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: Colors.black54,
                      ),),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black54,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
                      )

                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        // Navigator.pushNamed(context, 'register');
                      }, child: Text("Sing Up",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w200,
                        color: Colors.black54,
                        decoration: TextDecoration.underline,

                      ),)),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
