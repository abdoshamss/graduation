import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EmailAdd_Screen.dart';
class SendEmailResultScreen extends StatelessWidget {
  var emailaddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFDFD),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 25.0.w,
            vertical: 70.0.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send Via email',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please enter the email address to add',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.normal,
                      fontSize: 17.0.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    'user.',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22.0.h,
              ),
              Text(
                'Email address',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 25.0.sp,
                ),
              ),
              SizedBox(
                height: 7.0.h,
              ),
              TextFormField(
                controller: emailaddressController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: InputDecoration(
                  hintText: 'email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.r)
                  ),
                ),
              ),
              SizedBox(
                height: 35.0.h,
              ),
              Container
                (
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r,),
                  color: Color(0xff4FC070),
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                    print(emailaddressController.text);
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) =>EmailAddScreen(
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(15.0.w),
                    child: Text(
                      'Send',
                      style: GoogleFonts.poppins(
                        color: Color(0xffFFFDFD),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0.sp
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
