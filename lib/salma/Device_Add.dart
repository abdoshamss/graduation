import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class DeviceAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 95.0.w,
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Text('Device has been',
                style: GoogleFonts.poppins(
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                'added',
                style: GoogleFonts.poppins(
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Text('Successfully',
                style: GoogleFonts.poppins(
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 80.0.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                    horizontal: 20.0.w
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0.r,),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 43.0.h,
                  child: MaterialButton(
                    onPressed: (){
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(8.0.w),
                      child: Text(
                        'Continue',
                        style: GoogleFonts.poppins(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0.sp
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              TextButton(
                  onPressed: (){},
                  child: Text(
                    'Back to home',
                    style: GoogleFonts.poppins(
                        color: Colors.white,

                        fontSize: 20.0.sp
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}