import 'package:app_clean_arc/auth/Login_Screen.dart';
import 'package:app_clean_arc/salma/Dashboard_Screen.dart';
import 'package:app_clean_arc/salma/Full_Screen.dart';
import 'package:app_clean_arc/salma/Logo_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black
            ),
            color: Colors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.poppins(
              color: Colors.black,
            )
          )
        ),
        home: LogoScreen(),
      ),
    );
  }
}