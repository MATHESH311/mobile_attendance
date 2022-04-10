


import 'package:mobile_attendance/Dashboard.dart';
import 'package:mobile_attendance/Login%20page.dart';
import 'package:mobile_attendance/register.dart';
import 'package:flutter/material.dart';
import 'Reset password.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register': (context)=>MyRegister(),
      'resetpass':(context)=>Resetpass(),
      'dash' :(context)=>Mydash()},
  ));
}

