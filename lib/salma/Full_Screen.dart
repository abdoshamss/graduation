import 'package:app_clean_arc/auth/Login_Screen.dart';
import 'package:app_clean_arc/auth/SignUp_Screen.dart';
import 'package:app_clean_arc/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 150.h),
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('assets/images/getstarted.png'),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: HexColor('4FC070'),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              topRight: Radius.circular(50.r),
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 36.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Full Control\n'),
                      TextSpan(
                        text: 'for your\n',
                      ),
                      TextSpan(text: 'smart home\n'),
                      TextSpan(
                          text:
                              'control your smart home easier with our features\n',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontStyle: FontStyle.normal,
                            color: HexColor('ffffff').withOpacity(0.8),
                          )),
                    ],
                  )),
                  CustomButton(
                    active: true,
                    circular: 24.r,
                    backgroundColor: Colors.white,
                    textColor: HexColor('4FC070'),
                    text: 'Get Started',
                    onPress: () {
                      navigateTo(context, SignUpScreen());
                    },
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    width: 307.w,
                    height: 46.h,
                  ),
                  Text(
                    'Create Account',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: HexColor('FFFFFF'),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have account ?',style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: HexColor('ffffff').withOpacity(0.9),
                      ),),
                      TextButton(onPressed: (){
                        navigateTo(context, LoginScreen());
                      }, child: Text('Log in',
                        style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.white
                      ),),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
