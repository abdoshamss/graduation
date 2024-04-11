import 'package:app_clean_arc/components.dart';
import 'package:app_clean_arc/dashboard.dart';
import 'package:flutter/material.dart';

import '../salma/Dashboard_Screen.dart';

class SignUpScreen extends StatelessWidget {


  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/logog-01.png',
                width: 100.0,
              ),
              SizedBox(
                height: 38.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0
                ),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: phoneController,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: InputDecoration(
                    labelText: 'Phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: confirmpasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: InputDecoration(
                    labelText: 'Confirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                ),
              ),
              SizedBox(
                height: 10.0,
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
                    print(phoneController.text);
                    print(confirmpasswordController.text);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign up',
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
                height: 10.0,
              ),
             Column(
               children: [
                 Text(
                   'Or Continue With',
                   style: TextStyle(
                       color: Colors.black54,
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
                           color: Colors.black54,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                     MaterialButton(
                       onPressed: (){
                       navigateTo(context, DashboardScreen());
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



            ]
              ),
        )
      ),
    );
  }
}
