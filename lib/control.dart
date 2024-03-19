import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import 'components.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  double _fanRotation = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'fan',
                      style: TextStyle(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500),
                    ),
                     Text(
                      'Living Room',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey),
                    ),
                    Text(
                      'Change Location',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w200,
                        color: HexColor('#4fc070'),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Switch(
                  value: true,
                  activeColor: HexColor('#50bf70'),
                  inactiveThumbColor: Colors
                      .white, // Set the color of the switch button in the inactive state
                  onChanged: (value) {
                    // Handle switch value change
                  },
                )
              ],
            ),
            Transform.rotate(
              angle: _fanRotation,
              child: SizedBox(
                width: 250.w,
                height: 210.h,
                child: Center(
                  child: Image.asset('assets/images/fan.png'),
                ),
              ),
            ),
             SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '29',
                      style: TextStyle(
                        fontSize: 47.sp,
                        height: 0,
                        color: HexColor('#4eb973'),
                      ),
                    ),
                    Text(
                      'Speed',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: HexColor('#888888'),
                          height: 0),
                    ),
                  ],
                ),
                Text(
                  'Mph',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: HexColor('#888888'),
                      height: 0),
                ),
                const Spacer(),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.r,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(25.dm),
                            border: Border.all(
                              color: HexColor('#d8d8d8'),
                              width: 2.w,
                            )),
                      ),
                    ),
                     SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'slow',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: HexColor('#888888'),
                          height: 0),
                    ),
                  ],
                ),
                 SizedBox(
                  width: 15.w,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: HexColor('#4fc070'),
                      radius: 20.dm,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(25.dm),
                            border: Border.all(
                              color: HexColor('#4fc070'),
                              width: 2.w,
                            )),
                      ),
                    ),
                     SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'fast',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: HexColor('#4fc070'),
                          height: 0),
                    ),
                  ],
                ),
              ],
            ),
             SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.85, // Set the width to 75% of the screen width
                  child: SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: HexColor('#47c36b'),
                      thumbShape: CustomSliderThumbShape(
                        thumbRadius: 12.0.dm, // Radius of the thumb
                        borderThickness:
                        2.0, // Thickness of the border
                      ),
                    ),
                    child: Slider(
                      label: 'fan',
                      value: _fanRotation,
                      min: 0,
                      max: 2 * 3.14, // Assuming a full rotation
                      onChanged: (value) {
                        setState(() {
                          _fanRotation = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: Image.asset('assets/images/fan.png'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
