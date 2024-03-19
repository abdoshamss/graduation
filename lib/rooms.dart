import 'package:app_clean_arc/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class RoomPage extends StatelessWidget {
  ScrollController controller = ScrollController();
  List<Map>rooms=[
    {
      'icon':'assets/images/bed.png',
      'title':'Bed Room',
      'numOfDevices':'7 devices',
      'bkColor':HexColor('#72cc8d'),
    },
    {
      'icon':'assets/images/living-room.png',
      'title':'Living Room',
      'numOfDevices':'6 devices',
      'bkColor':HexColor('#becbde'),
    },
    {
      'icon':'assets/images/lamp.png',
      'title':'Office Room',
      'numOfDevices':'4 devices',
      'bkColor':HexColor('#d2cbdb'),
    },
    {
      'icon':'assets/images/bath.png',
      'title':'Bath Room',
      'numOfDevices':'2 devices',
      'bkColor':HexColor('#d49284'),
    },
    {
      'icon':'assets/images/dining.png',
      'title':'Dining Room',
      'numOfDevices':'5 devices',
      'bkColor':HexColor('#dda99e'),
    },
    {
      'icon':'assets/images/kitchen.png',
      'title':'Kitchen',
      'numOfDevices':'3 devices',
      'bkColor':HexColor('#61c77e'),
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back arrow press
          },
        ),
        title:  Text('Rooms',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600)),
        centerTitle: true,

      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 30.h,top: 20.h, right: 20.w,left: 20.w),
        child: GridView.count(
          controller: controller,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.w,
          childAspectRatio: 1 / 1.04,
          children: List.generate(
   rooms.length,(index)=>room(icon: rooms[index]['icon'], numOfDevices: rooms[index]['numOfDevices'], title: rooms[index]['title'], bkColor: rooms[index]['bkColor'], context: context)
          ),
        ),
      ),
    );
  }
}
