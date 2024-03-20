import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SendEmailResult_Screen.dart';

class AddUserScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFDFD),
        title: Center(
          child: Text(
            'Add Users',
            style: GoogleFonts.poppins(
              color:  Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body:
      Padding(
        padding:  EdgeInsets.all(25.0.w),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.mail_sharp,
                  color: Color(0xff4FC070),
                  size: 35.0.w,
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Send an Mail',
                      style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Text(
                      'if you have',
                      style: GoogleFonts.poppins(
                        color:  Color(0xff000000),
                      ),

                    )
                  ],
                )

              ],
            ),
            SizedBox(
              height: 7.0.h,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r,),
                  color: Color(0xff4FC070),
                ),

                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) =>SendEmailResultScreen(
                        ),
                      ),
                    );
                  },

                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20.0.w,
                      vertical: 10.0.h
                    ),
                    child: Text(
                      'Invite',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffFFFDFD),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.0.h,
            ),
            Row(
              children: [
                 Icon(
                  Icons.qr_code,
                  color: Color(0xff4FC070),
                  size: 35.0.w,
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Use a QR Code',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(
                      'Use the QR code on your device.',
                      style: GoogleFonts.poppins(
                        color:  const Color(0xff000000),
                      ),

                    )
                  ],
                ),


              ],
            ),
            SizedBox(
              height: 7.0.h,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r,),
                  color: const Color(0xff4FC070),
                ),

                child: MaterialButton(
                  onPressed: (){
                  },

                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 20.0.w,
                        vertical: 10.0.h
                    ),
                    child: Text(
                      'Invite',
                      style: GoogleFonts.poppins(
                        color: Color(0xffFFFDFD),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ],


        ),
      ),
    );
  }
}
