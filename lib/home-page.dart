import 'package:app_clean_arc/control.dart';
import 'package:app_clean_arc/schdule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back arrow press
          },
        ),
        title: Text(
          'Living Room',
          style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle three dots icon press
            },
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.w),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#4fc070'),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                height: 55.h,
                width: double.infinity,
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white, // White color for the indicator
                  ),
                  labelColor: HexColor('#4fc070'), // Red color for the active tab text
                  unselectedLabelColor:
                  Colors.white, // White color for the inactive tab text
                  indicatorPadding: EdgeInsets.symmetric(
                      vertical: 10.h), // Adjust the space between indicator and tab text
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: const [
                    Tab(
                      text: '     Control     ',
                    ),
                    Tab(text: '     Schedule     '),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [

                  Container(
                    child: const Center(
                     child: ControlPage(),
                    ),
                  ),

                  Container(
                    child: const Center(
                      child: SchdulePage(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
