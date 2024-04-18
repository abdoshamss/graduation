import 'package:app_clean_arc/home-page.dart';
import 'package:app_clean_arc/room-propertey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final double borderThickness;

  CustomSliderThumbShape({
    required this.thumbRadius,
    required this.borderThickness,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop = false,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white // Color of the thumb
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = HexColor('#47c36b') // Border color of the thumb
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderThickness;

    // Draw the border
    canvas.drawCircle(center, thumbRadius, borderPaint);

    // Draw the thumb
    canvas.drawCircle(center, thumbRadius, paint);
  }
}

Widget Schedule({
  required bool switched,
  required String title,
  required String caption,
  required String days,
  required String times,
  required IconData titleIcon,
}) {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
    decoration: BoxDecoration(
      color: HexColor('#def3e4'),
      borderRadius: BorderRadius.circular(20.dm),
    ),
    height: 190.h,
    width: double.infinity,
    padding: EdgeInsets.all(20.h),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 35.r,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  titleIcon,
                  color: HexColor('#6ca88c'),
                  size: 38.sp,
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  caption,
                  style: TextStyle(color: HexColor('#888888')),
                ),
              ],
            ),
            Spacer(),
            Switch(
              value: switched,
              activeColor: HexColor('#50bf70'),
              inactiveThumbColor: Colors
                  .white, // Set the color of the switch button in the inactive state
              onChanged: (value) {
                // Handle switch value change
              },
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Icon(
              Icons.repeat_sharp,
              color: HexColor('#6ca88c'),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              days,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Icon(
              Icons.access_time,
              color: HexColor('#6ca88c'),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              height: 32.h,
              width: 150.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.dm),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.25),
                    width: 1.w,
                  )),
              padding: EdgeInsets.all(5.h),
              child: Text(times),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget room({
  required String icon,
  required String numOfDevices,
  required String title,
  required Color bkColor,
  required BuildContext context,
}) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      height: 180.h,
      width: 170.w,
      decoration: BoxDecoration(
        color: bkColor,
        borderRadius: BorderRadius.circular(20.dm),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: Colors.white,
            child: Image.asset(icon),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          Text(
            numOfDevices,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.6)),
          )
        ],
      ),
    ),
    onTap: (){
      navigateTo(context,RoomProperty());
    },
  );
}
class DeviceWidget extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected; // Whether this device is selected
  final VoidCallback onTap;
  DeviceWidget({required this.image, required this.name,required this.onTap,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 104.h,
        width: 146.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.dm),
          color: isSelected ? HexColor('#DCDADA') : HexColor('#F3F3F3'),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          children: [
            CircleAvatar(
              radius: 26.dm,
              backgroundColor: Colors.white,
              child: Image.asset(image),
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}



class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.active,
    required this.circular,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    required this.onPress,
    required this.fontWeight,
    required this.fontSize,
    required this.width,
    required this.height,
  }) : super(key: key);
  final bool active;
  final double circular;
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPress;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor:active? backgroundColor:Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  circular,
                ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center, // Align text to center
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: 'Poppins',
            color: textColor,
          ),
        ),
      ),
    );
  }
}

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
Widget roomPrototypeItem({
  required Color bgColor,
  required String image,
  required bool switched,
  required String title,
  required String status,
  required ValueChanged onChange,
  required Color statusColor,
  required Color titleColor,
  required BuildContext context,
}){
  return GestureDetector(
    onTap: (){
      navigateTo(context, HomePage());
    },
    child: Container(
      padding: EdgeInsets.all(10.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.dm),
      color: bgColor,
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image),
              const Spacer(),
              Switch(
                value: switched,
                activeColor: bgColor.withOpacity(0.5),
                inactiveThumbColor: bgColor.withOpacity(0.5),
                activeTrackColor: Colors.grey[400],
                // Set the color of the switch button in the inactive state
                onChanged: onChange,
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(title,style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: titleColor
          ),),
          SizedBox(
            height: 5.h,
          ),
          Text(status,style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: statusColor
          ),),
        ],
      ),
    ),
  );
}