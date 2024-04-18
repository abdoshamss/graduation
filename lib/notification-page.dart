import 'package:app_clean_arc/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Notifications extends StatefulWidget {
   Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<int?> _selectedIndexList = [null, null];
 @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Text(
            'Notifications',
            style: GoogleFonts.poppins(
              fontSize: 23.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75.h), // Adjust the preferred height
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50.w),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: HexColor('#4fc070'),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorPadding: EdgeInsets.symmetric(vertical: 4.h),
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  Tab(text: '     Updates     '),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: Colors.white,
                        ), // Exclamation mark icon
                        SizedBox(
                          width: 4.w,
                        ), // Adjust the space between icon and text
                        Text(
                          'Alerts',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: const Center(
                child: Text('Updates Page'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 20.r,
                                  child: Image.asset('assets/images/bed.png'),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Flexible(
                                  child: Text(
                                    'Motion Detection records an individual. This is you ?',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                                    maxLines: 5,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  circular: 8.r,
                                  active: _selectedIndexList[index] == 0,
                                  backgroundColor: HexColor('#4fc070'),
                                  textColor: _selectedIndexList[index] == 0 ? Colors.white : Colors.black,
                                  text: 'Yes',
                                  onPress: () {
                                    setState(() {
                                      _selectedIndexList[index] = 0;
                                    });
                                  },
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  width: 90.w,
                                  height: 25.h,
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                CustomButton(
                                  circular: 8.r,
                                  active: _selectedIndexList[index] == 1,
                                  backgroundColor: HexColor('#4fc070'),
                                  textColor: _selectedIndexList[index] == 1 ? Colors.white : Colors.black,
                                  text: 'No',
                                  onPress: () {
                                    setState(() {
                                      _selectedIndexList[index] = 1;
                                    });
                                  },
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  width: 90.w,
                                  height: 25.h,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text('  Today At 11 Am',style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400
                            ),),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Container(
                        height: 1.h,
                        color: Colors.black,
                        margin: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 10.h,
                        ),
                      ),
                      itemCount: 2,
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
