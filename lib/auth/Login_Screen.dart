import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../salma/Dashboard_Screen.dart';
import 'SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xffFFFDFD),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffFFFDFD),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Image.asset('images/logog-01.png',
                width: 100.0,
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Log in',
                      style: GoogleFonts.poppins(
                        color:  Color(0xff000000),
                        fontSize: 30.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email or phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) =>SignUpScreen(
                            ),
                          ),
                        );
                      },
                      child: Text('Forget password ? ',
                        style: TextStyle(
                          color: Color(0xff4FC070),
                        ),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Color(0xff4FC070),
                  ),
                  width: double.infinity,
                  height: 50.0,
        
                  child: MaterialButton(
                    onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) =>DashboardScreen(
                          ),
                        ),
                      );
                    },
        
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xffFFFDFD),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
        
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
        
                  children: [
                    Text(
                      'Or Continue With',
                      style: TextStyle(
                          color: Color(0XFF5C5454),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook_rounded,
                          color: Color(0xff4FC070),
                          size: 35.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.whatshot,
                          color: Color(0xff4FC070),
                          size: 35.0,
                        ),
                        Icon(
                          Icons.g_mobiledata,
                          color: Color(0xff4FC070),
                          size: 48.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don/t have an account ?',
                          style: TextStyle(
                            color: Color(0XFF5C5454),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) =>SignUpScreen(
                                ),
                              ),
                            );
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                              color: Color(0xff4FC070),
                            ),),
                        ),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}