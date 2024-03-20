import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
         child: Text(
           'Edit Profile',
           style: GoogleFonts.poppins(
             color: Colors.black,
             fontWeight: FontWeight.bold
           ),
         ),
       ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0.r,
                    backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/429a/00f3/49e33e37aedf4757b1c04937bb1c3d5e?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VHPb1bHXG4DXXLV0CLnkMA0LJRpTsE2RoZfcbh1YO3Y4NyDi0sc2Gx3nw5ydugcchkn9SZA4wYrFNs6g2hsDEk4KRvOUcZV~LGFS828glvtbq8x3pVhl55Jb9Iq07IP4je9v4jU38~XzoPWHBheOxtn9PrrAJgTLMWl10cT4GBaiCVBtiTVvb~bW2Wa6hIci1u9pNj8dp5nDwA6SZ5d~TwDkcuGNem6X57zHQonDbSos3WoQEMPGRZdnZIrOKNbZ-nLzUJ~AgGaa1is82pKJ3rdg9rwGw9qLVTVwP3sBFR~izdbpU-fYyPKfnbwD79VEl70zEc6SC0CjxFCpTbafmA__'
                        ''),
                  ),
                 Padding(
                   padding:  EdgeInsetsDirectional.only(
                     bottom: 8.0.w
                   ),
                   child: Icon(
                     Icons.photo_camera,
                     size: 19.0.w,
                     color: Color(0xff4FC070),
                   ),
                 )
                ],
              ),
            ),
           SizedBox(
             height: 35.0.h,
           ),
            Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: 28.0.w
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0.r,),
                  color: Color(0xffFFFDFD),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Phone',
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Date of birth',
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Address',
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                    ],
                  ),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
