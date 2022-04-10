import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydash extends StatefulWidget {
  const Mydash({Key? key}) : super(key: key);

  @override
  State<Mydash> createState() => _MydashState();
}

class _MydashState extends State<Mydash> {
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
              padding: EdgeInsets.only(left: 20,top: 20 ),
              child: Image.asset('assets/woman.png',height: 70,),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, top: 27),
              child: Text('Welcome\nUSER NAME',style: TextStyle(
                fontSize: 20,fontFamily: 'Noto Serif'
              ),),
            )
          ],
        ),
      ),
    );
}
}
