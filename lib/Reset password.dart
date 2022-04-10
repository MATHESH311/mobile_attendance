import 'package:flutter/material.dart';

class Resetpass extends StatefulWidget {
  const Resetpass({Key? key}) : super(key: key);

  @override
  State<Resetpass> createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/BG1.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40,top: 225),
              child: Text("Reset Password",
                style: TextStyle(color: Colors.black, fontSize: 30,
                    fontFamily: 'Noto Serif'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.39,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
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
                      height: 45,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.blue.shade50,
                        filled: true,
                        hintText: 'Confirm Password',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'login');
                      },child: Text('Done',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold,
                          fontFamily: 'Noto Serif',color: Color(0xFF37474F)
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
