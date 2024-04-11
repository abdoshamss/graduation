import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class StaticsScreen extends StatefulWidget {
  @override
  State<StaticsScreen> createState() => _StaticsScreenState();
}

class _StaticsScreenState extends State<StaticsScreen> {
  final con = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Statistics',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.parse("2222-12-31"),
                  ).then((value){
                    con.text = DateFormat.yMMMMd().format(value!);
                    setState(() {
                      print(con.text);
                    });


                  });
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 120.w,
                    padding: EdgeInsetsDirectional.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.05),
                      borderRadius: BorderRadius.circular(16.r)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          con.text.split(" ").first??"",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 20.w,
                        )

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Align(
                alignment: Alignment.center,
                  child: Image.asset("assets/images/sta.jpg")),
              SizedBox(height: 10.h,),
              Text(
                'Device Power',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20.0.r,
                    )
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                                            Icon(Icons.ac_unit,
                                            color: Colors.green,
                        size: 30.0.w,),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            Text(
                                'Fan'
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.energy_savings_leaf,
                                  size: 35.0.w,
                                  color: Colors.green,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Energy Usage'
                                      ),
                                      Text(
                                          '100 Kwh'
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.access_time_outlined,
                                    size: 35.0.w,
                                    color: Colors.green,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Usage Time'
                                      ),
                                      Text(
                                          '24 hours'
                                      ),
                                    ],
                                  ),
                    
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20.0.r,
                    )
                ),
                child: Padding(
                  padding:  EdgeInsets.all(20.0.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                  Icon(Icons.screen_lock_landscape_outlined,
                  color: Colors.green,
                  size: 30.0.w,),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Text(
                              'Television'
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.0.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.energy_savings_leaf,
                                  size: 35.0.w,
                                  color: Colors.green,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Energy Usage'
                                    ),
                                    Text(
                                        '100 Kwh'
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.access_time_outlined,
                                  size: 35.0.w,
                                  color: Colors.green,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Usage Time'
                                    ),
                                    Text(
                                        '24 hours'
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),
        ),
      )
    );
  }
}
