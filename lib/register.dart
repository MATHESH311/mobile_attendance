import 'dart:io';

import 'package:flutter/material.dart';
//required
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
//required
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/BG5.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40,top: 150),
              child: Text("Sign Up",
                style: TextStyle(color: Colors.black, fontSize: 45,
                    fontFamily: 'Noto Serif'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.35,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade50,
                          filled: true,
                          hintText: 'Name',
                          ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade50,
                          filled: true,
                          hintText: 'E-mail',
                          ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade50,
                          filled: true,
                          hintText: 'Password',
                          ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade50,
                          filled: true,
                          hintText: 'Re-Enter Password',
                          ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){
                          signUp(nameController.text, emailController.text, passwordController.text);
                         Navigator.pushNamed(context, 'login');
                        }, child : Text('Sign Up',style: TextStyle(
                          color :Color(0xFF37474F), fontSize: 27,fontWeight: FontWeight.bold,
                          fontFamily: 'Noto Serif'
                      ),
                      ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

signUp(String name, String email, String password) async{
  Map data = {
    "name" : name,
    "emailAddress" : email,
    "password" : password
  };
  var postUrl = Uri.parse("http://10.0.2.2:8081/api/attendance/signup/add-user") ;
  var response = await http.post(postUrl, body: jsonEncode(data), headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  if (response.statusCode == 200) {
    print("Signed Up successful");
  }
}
