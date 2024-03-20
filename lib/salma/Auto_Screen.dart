import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AutoAdd_Screen.dart';

class AutoScreen extends StatefulWidget {

  @override
  State<AutoScreen> createState() => _AutoScreenState();
}

class _AutoScreenState extends State<AutoScreen> {
  bool day1 = false;
  bool day2 = false;
  bool day3 = false;
  bool day4 = false;
  bool day5 = false;
  bool day6 = false;
  bool day7 = false;

  bool isDevice1 = false;
  bool isDevice2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(
        child: Text(
          'Add Automation',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20.0.w),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Scene name',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                TextFormField(
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Text(
                  'Group',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                TextFormField(
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: '',
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start time',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          TextFormField(
                            onFieldSubmitted: (value){
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              suffixIcon: Icon(
                                  Icons.access_time_rounded
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'End time',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          TextFormField(
                            onFieldSubmitted: (value){
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              suffixIcon: Icon(
                                  Icons.access_time_rounded
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Text(
                  'Repeat',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                SizedBox(
                  height:50.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap:(){
                          setState(() {
                            day1 = !day1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: day1 ? Colors.green:Colors.transparent,
                            border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Mon',
                            style: TextStyle(
                                color:day1 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day2 = !day2;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day2 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Tue',
                            style: GoogleFonts.poppins(
                                color:day2 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day3 = !day3;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day3 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Wed',
                            style: GoogleFonts.poppins(
                                color:day3 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day4 = !day4;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day4 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Thu',
                            style: GoogleFonts.poppins(
                                color:day4 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day5 = !day5;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day5 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Fri',
                            style: GoogleFonts.poppins(
                                color:day5 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day6 = !day6;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day6 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Sat',
                            style: GoogleFonts.poppins(
                                color:day6 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            day7 = !day7;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.all(8.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: day7 ? Colors.green:Colors.transparent,
                              border: Border.all(color: Colors.green,width: 2.w)
                          ),
                          child :Text(
                            'Sun',
                            style: GoogleFonts.poppins(
                                color:day7 ? Colors.white: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Text(
                  'Device',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                InkWell(
                  onTap:() {
                    setState(() {
                      isDevice1 = !isDevice1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsetsDirectional.all(16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        color: isDevice1?Colors.green:Colors.grey,
                        width: 2.w,
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fan ',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          isDevice1?Icons.check_circle:Icons.check_circle_outline_outlined,
                          color: Color(0xff4FC070),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                InkWell(
                  onTap:() {
                    setState(() {
                      isDevice2 = !isDevice2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsetsDirectional.all(16.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                          color: isDevice2?Colors.green:Colors.grey,
                          width: 2.w,
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fan ',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          isDevice2?Icons.check_circle:Icons.check_circle_outline_outlined,
                          color: Color(0xff4FC070),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0.r,),
                      color: Color(0xff4FC070),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) =>AutoAddScreen(
                            ),
                          ),
                        );
                      },

                      child: Padding(
                        padding:  EdgeInsets.all(20.0.w),
                        child: Text(
                          'Add Automation',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
