import 'package:app_clean_arc/components.dart';
import 'package:app_clean_arc/notification-page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatefulWidget {

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isSwithced = false;
  bool isSelected = false;
  bool isChoose = false;
  TooltipBehavior ? _tooltipBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
         icon: Icon(Icons.notifications_none_outlined),
         onPressed: (){
          navigateTo(context, Notifications());
         },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dashboard',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              width: 4.0.w,
            ),
            Icon(
                Icons.keyboard_arrow_down,
            ),
          ],
        ),
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.symmetric(
          horizontal: 15.w
            ),
            child: CircleAvatar(
              radius: 23.0.r,
            //  backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/429a/00f3/49e33e37aedf4757b1c04937bb1c3d5e?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VHPb1bHXG4DXXLV0CLnkMA0LJRpTsE2RoZfcbh1YO3Y4NyDi0sc2Gx3nw5ydugcchkn9SZA4wYrFNs6g2hsDEk4KRvOUcZV~LGFS828glvtbq8x3pVhl55Jb9Iq07IP4je9v4jU38~XzoPWHBheOxtn9PrrAJgTLMWl10cT4GBaiCVBtiTVvb~bW2Wa6hIci1u9pNj8dp5nDwA6SZ5d~TwDkcuGNem6X57zHQonDbSos3WoQEMPGRZdnZIrOKNbZ-nLzUJ~AgGaa1is82pKJ3rdg9rwGw9qLVTVwP3sBFR~izdbpU-fYyPKfnbwD79VEl70zEc6SC0CjxFCpTbafmA__',
            //  ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 borderRadius: BorderRadius.circular(20.0.r)
               ),
               child: Padding(
                 padding:  EdgeInsets.all(20.0.w),
                 child: Row(
                   children: [
                     Column(
                       children: [
                         Text(
                           'Wendesday',
                           style: GoogleFonts.poppins(
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                           ),
                         ),
                         SizedBox(
                           height: 3.0.h,
                         ),
                         Text(
                           '17 oct',
                           style: GoogleFonts.poppins(
                               color: Colors.white
                           ),
                         ),
                         SizedBox(
                           height: 25.0.h,
                         ),
                         Row(
                           children: [
                             Icon(Icons.cloudy_snowing,
                             color: Colors.white,),


                         SizedBox(
                           width: 2.0.w,
                         ),
                         Text('cloudy',
                         style: GoogleFonts.poppins(
                             color: Colors.white
                         ),
                         )
                           ],
                         ),
                       ],
                     ),
                     Spacer(),
                     Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.location_on_outlined,
                             color: Colors.white,),
                             SizedBox(
                               width: 2.0.w,
                             ),
                             Text('Location',
                               style: GoogleFonts.poppins(
                                   fontSize: 30.0.sp,
                                   color: Colors.white
                               ),
                             )
                           ],
                         ),
                         SizedBox(
                           height: 28.0.h,
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('18',
                             style: GoogleFonts.poppins(
                               fontSize: 30.0.sp,
                               color: Colors.white
                             ),),
                             Text(
                               '0',
                               style: GoogleFonts.poppins(
                                   fontSize: 18.0.sp,
                                   color: Colors.white
                               ),
                             )
                           ],
                         )
                       ],
                     )
                   ],
                 ),
               ),
             ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        vertical: 5.0.h
                      ),
                      child: Container(
                        width: 150.0.w,
                        height: 258.0.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0.r),
                            boxShadow: [
                              BoxShadow(
                                 color: Colors.grey,
                                 blurRadius: 5.r,
                    
                              )
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(26.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Home',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                  'Temperature',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                      '24',
                                    style: GoogleFonts.poppins(
                                        fontSize: 19.0.sp
                                    ),
                                  ),
                                    SizedBox(
                                      width: 3.0.w,
                                    ),
                                    Text(
                                      '0',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.0.sp
                                      ),
                                    ),
                                  Text(
                                    'c',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20.0.sp
                                    ),
                                  ),
                    
                                ],
                              ),
                              SizedBox(height: 12.h,),
                              Row(
                                children: [
                                  Switch(
                                    value: isSwithced,
                                    activeColor: Colors.red,
                                    thumbColor: MaterialStateProperty.resolveWith ((Set  states) {
                                      if (states.contains(MaterialState.disabled)) {
                                        return Colors.orange.withOpacity(.48);
                                      }
                                      return Colors.white;
                                    }),
                                    hoverColor: Colors.white,
                                    onChanged:(value) {
                                      setState(() {
                                        isSwithced = value;
                                      });
                                    },
                                  ), SizedBox(width: 5.w,),
                                  Text(
                                    isSwithced?'ON':"Off",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.0.sp,
                                      color: Colors.red
                                    ),
                                  ),
                    
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w,),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        vertical: 7.0.h
                      ),
                      child: Container(
                        width: 150.0.w,
                        height: 280.0.h,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.0.r)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(27.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Energy',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                'Usage',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 5.0.h,
                              ),
                              Text(
                                '&171.31',
                                style: GoogleFonts.poppins(
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 3.0.h,
                              ),
                              Text(
                                'this mounth',
                                style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Expanded(
                                child: LineChart(
                                  LineChartData(
                                    backgroundColor: Colors.transparent,
                                    borderData: FlBorderData(
                                      show: false
                                    ),
                                    lineBarsData: [
                                      LineChartBarData(
                                        spots: [
                                          FlSpot(0, 3),
                                          FlSpot(2.6, 2),
                                          FlSpot(4.9, 5),
                                          FlSpot(6.8, 3.1),
                                          FlSpot(8, 4),
                                          FlSpot(9.5, 3),
                                          FlSpot(11, 4),
                                        ],
                                        isCurved: true,
                                        isStrokeJoinRound: true,
                                        color: Colors.white,
                                        barWidth: 03.w,
                                        isStrokeCapRound: false,
                                        isStepLineChart: false,
                                
                                        dotData: FlDotData(show: false),
                                        preventCurveOverShooting: true,
                                        belowBarData: BarAreaData(show: false),
                                      ),
                                    ],
                                    titlesData: FlTitlesData(
                                      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                      bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    ),
                                  ),
                                ),
                              )
                              // Expanded(
                              //   child: SfCartesianChart(
                              //       primaryXAxis: CategoryAxis(),
                              //       // Chart title
                              //       title: ChartTitle(text: "",
                              //       ),
                              //       legend: Legend(isVisible: false),
                              //       tooltipBehavior: _tooltipBehavior,
                              //       enableAxisAnimation: true,
                              //       series: <LineSeries<SalesData, String>>[
                              //         LineSeries<SalesData, String>(
                              //             dataSource:List<SalesData>.generate(
                              //               10,
                              //                   (i)=>SalesData((i+1).toString(), 1),
                              //             ),
                              //             xValueMapper: (SalesData sales, _) => sales.year,
                              //             yValueMapper: (SalesData sales, _) => sales.sales,
                              //             color: Colors.white,
                              //             width: 3.5,
                              //             dataLabelSettings: DataLabelSettings(
                              //               isVisible: true,
                              //               color: Colors.white,
                              //               alignment: ChartAlignment.far,
                              //             )
                              //         )
                              //       ]
                              //   ),
                              // )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 7.0.h
                      ),
                      child: Container(
                        width: 150.0.w,
                        height: 280.0.h,
                        decoration: BoxDecoration(
                            color: Colors. purple[200],
                            borderRadius: BorderRadius.circular(20.0.r)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(27.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Motion',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Text(
                                '8',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 5.0.h,
                              ),
                              Text(
                                'Cammeras',
                                style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: 3.0.h,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Row(
                                children: [
                                  Switch(
                                    value: isSelected,
                                    activeColor: Colors.white,
                                    thumbColor: MaterialStateProperty.resolveWith ((Set  states) {
                                      if (states.contains(MaterialState.disabled)) {
                                        return Colors.orange.withOpacity(.48);
                                      }
                                      return Colors.purple[200];
                                    }),
                                    hoverColor: Colors.purple[200],
                                    onChanged:(value) {
                                      setState(() {
                                        isSelected = value;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 5.w,),
                                  Text(
                                    isSelected?'ON':"Off",
                                    style: TextStyle(
                                        fontSize: 15.0.sp,
                                        color: Colors.white
                                    ),
                                  ),

                                ],
                              ),
                              // Expanded(
                              //   child: SfCartesianChart(
                              //       primaryXAxis: CategoryAxis(),
                              //       // Chart title
                              //       title: ChartTitle(text: "",
                              //       ),
                              //       legend: Legend(isVisible: false),
                              //       tooltipBehavior: _tooltipBehavior,
                              //       enableAxisAnimation: true,
                              //       series: <LineSeries<SalesData, String>>[
                              //         LineSeries<SalesData, String>(
                              //             dataSource:List<SalesData>.generate(
                              //               10,
                              //                   (i)=>SalesData((i+1).toString(), 1),
                              //             ),
                              //             xValueMapper: (SalesData sales, _) => sales.year,
                              //             yValueMapper: (SalesData sales, _) => sales.sales,
                              //             color: Colors.white,
                              //             width: 3.5,
                              //             dataLabelSettings: DataLabelSettings(
                              //               isVisible: true,
                              //               color: Colors.white,
                              //               alignment: ChartAlignment.far,
                              //             )
                              //         )
                              //       ]
                              //   ),
                              // )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w,),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 5.0.h
                      ),
                      child: Container(
                        width: 150.0.w,
                        height: 258.0.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,

                              )
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(26.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Humidity',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 8.0.h,
                              ),
                              Text(
                                '30%',
                                style: GoogleFonts.poppins(
                                    fontSize: 19.0.sp
                                ),
                              ),
                              SizedBox(height: 12.h,),
                              Row(
                                children: [
                                  Switch(
                                    value: isChoose,
                                    activeColor: Colors.red,
                                    thumbColor: MaterialStateProperty.resolveWith ((Set  states) {
                                      if (states.contains(MaterialState.disabled)) {
                                        return Colors.orange.withOpacity(.48);
                                      }
                                      return Colors.white;
                                    }),
                                    hoverColor: Colors.white,
                                    onChanged:(value) {
                                      setState(() {
                                        isChoose = value;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 5.w,),
                                  Text(
                                    isChoose?'ON':"Off",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.0.sp,
                                        color: Colors.red
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }


}

class SalesData{
  final String year ;
  final double sales ;

  SalesData(this.year, this.sales);
}