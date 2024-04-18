import 'package:app_clean_arc/components.dart';
import 'package:app_clean_arc/dashboard.dart';
import 'package:app_clean_arc/room-propertey.dart';
import 'package:app_clean_arc/rooms.dart';
import 'package:app_clean_arc/salma/Dashboard_Screen.dart';
import 'package:app_clean_arc/salma/Device_Add.dart';
import 'package:app_clean_arc/salma/Profile_Screen.dart';
import 'package:app_clean_arc/salma/Statics_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home-page.dart';
import 'notification-page.dart';

class SemiCircleBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(rect.left, rect.top)
      ..lineTo(rect.left, rect.bottom)
      ..arcToPoint(
        Offset(rect.right, rect.bottom),
        radius:  Radius.circular(rect.width / 2),
        clockwise: false,
      )
      ..lineTo(rect.right, rect.top)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screens = [
    DashboardScreen(),
    RoomPage(),
    StaticsScreen(),
    ProfileScreen(),
  ];
  int currentIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomNavVisible = true;
  PersistentBottomSheetController? _bottomSheetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: screens[currentIndex],
      bottomNavigationBar: Visibility(
        visible: isBottomNavVisible,
        child: SizedBox(
          height: 90.h,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('#fffefe'),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(0, -3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.dm),
                      topLeft: Radius.circular(40.dm),
                    ),
                  ),
                  height: 85.h,
                  child: GNav(
                    rippleColor: Colors.white,
                    hoverColor: Colors.white,
                    haptic: true,
                    tabBorderRadius: 15.dm,
                    curve: Curves.easeOutExpo,
                    duration: const Duration(milliseconds: 50),
                    color: HexColor('#888888'),
                    activeColor: HexColor('#4fc070'),
                    iconSize: 24.sp,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 3.h,
                    ),
                    tabs:  [
                      GButton(
                        icon: Icons.note_alt_outlined,
                      ),
                      GButton(
                        padding: EdgeInsets.only(right: 50),
                        icon: Icons.other_houses_outlined,
                      ),
                      GButton(
                        padding: EdgeInsets.only(left: 50),
                        icon: Icons.save,
                      ),
                      GButton(
                        icon: Icons.person_2_outlined,
                      ),
                    ],
                    onTabChange: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30.r,
                backgroundColor: HexColor('#4fc070'),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isBottomNavVisible = false; // Hide bottom nav
                      _bottomSheetController = scaffoldKey.currentState?.showBottomSheet(
                            (context) {
                          return Container(
                            height: 170.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(110.r),
                                topLeft: Radius.circular(110.r),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20.w,top: 60.h),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:  HexColor('A798BB').withOpacity(0.56),
                                          radius: 25.r,
                                          child:Image.asset('assets/images/device11.png'),
                                        ),
                                        Text('Device',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                  onTap: (() => navigateTo(context,AddDevice())),
                                ),
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30.w,top: 20.h),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:  HexColor('7F98C1').withOpacity(0.35),
                                          radius: 25.r,
                                          child:Image.asset('assets/images/room11.png'),
                                        ),
                                        Text('Room',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                  onTap: (() => navigateTo(context, RoomPage())),
                                ),
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 95.h),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:  HexColor('7F98C1').withOpacity(0.35),
                                          radius: 25.r,
                                          child:Image.asset('assets/images/close11.png'),
                                        ),
                                        Text('Close',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                ),

                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20.h),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:  HexColor('7F98C1').withOpacity(0.35),
                                          radius: 25.r,
                                          child:Image.asset('assets/images/people11.png'),
                                        ),
                                        Text('People',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(left:30.w,top: 60.h),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:  HexColor('C05859').withOpacity(0.35),
                                          radius: 25.r,
                                          child:Image.asset('assets/images/auto11.png'),
                                        ),
                                        Text('Auto',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: Colors.transparent, // Set background color to transparent
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(110.r),
                            topRight: Radius.circular(110.r),
                          ),
                        ),
                      );
                      _bottomSheetController?.closed.then((value) {
                        setState(() {
                          isBottomNavVisible = true; // Show bottom nav again
                        });
                      });
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.sp,
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
