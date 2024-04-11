import 'package:app_clean_arc/salma/Full_Screen.dart';
import 'package:flutter/material.dart';

import '../auth/Login_Screen.dart';

class LogoScreen extends StatefulWidget {
  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
   Future.delayed(Duration(seconds: 2),(){
     Navigator.pushReplacement(context, MaterialPageRoute(
         builder: (context) => OnBoardingScreen(),
     ));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF4FC070),
      ),
      body: Container(
       color: Color(0xff4FC070),
        child: Image.asset('assets/images/Login.jpeg',
        width: double.infinity,
        ),
      ),
    );
  }
}
