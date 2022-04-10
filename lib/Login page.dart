import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/BG4.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 140,top: 75),
              child: Image.asset('assets/logo.png',height: 120,),
            ),
            Container(
              padding: EdgeInsets.only(left: 96,top: 210),
              child: Text("SNS COLLEGE OF TECHNOLOGY\nAn Autonomous Institution",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
            ),
            Container(
              padding: EdgeInsets.only(left: 116,top: 200),
              child: Text("",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 40,top: 310),
              child: Text("Login",
                style: TextStyle(color: Colors.black, fontSize: 45,
                fontFamily: 'Noto Serif'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.48,right: 35,left: 35),
                child: Column(
                  children: [
                    TextFormField(
                      //add controller
                      decoration: InputDecoration(
                        fillColor: Colors.blue.shade50,
                        filled: true,
                        hintText: 'E-mail',
                        ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade50,
                          filled: true,
                          hintText: 'Password',
                          ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'dash');
                      },child: Text('Sign In',style: TextStyle(
                        fontSize: 27,fontWeight: FontWeight.bold,
                          fontFamily: 'Noto Serif',color: Color(0xFF37474F),
                      ),
                      ),
                      )
                      ],
                    ),
                    SizedBox(
                      height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('Create Account',style: TextStyle(
                          fontSize: 27,fontFamily: 'Noto Serif',fontWeight: FontWeight.w600,
                          color: Color(0xFF37474F)
                        ),)),
                      ],
                    ),
                    SizedBox(
                      height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'resetpass');
                        }, child: Text('Forgot Password',style: TextStyle(
                          fontSize: 27,fontFamily: 'Noto Serif', fontWeight: FontWeight.w600,color: Color(0xFF37474F)
                        ),
                        ))
                      ],
                    )
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
