import 'package:app_clean_arc/components.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class RoomProperty extends StatefulWidget {
  @override
  State<RoomProperty> createState() => _RoomPropertyState();
}

class _RoomPropertyState extends State<RoomProperty> {
  void audioPlayerTaskEntrypoint() async {
    AudioServiceBackground.run(() => AudioPlayerTask());
  }

  bool switched = false;
  ScrollController controller = ScrollController();
  List<Map> objs = [
    {
      'bkColor': HexColor('#c8ebd3'),
      'image': 'assets/images/lamp1.png',
      'switched': false,
      'title': 'Desk Lamp',
      'status': 'Off',
      'statusColor': Colors.grey,
      'titleColor': Colors.black
    },
    {
      'bkColor': HexColor('#7f98c1'),
      'image': 'assets/images/mdi_fan.png',
      'switched': false,
      'title': 'Fan',
      'status': 'Off',
      'statusColor': Colors.grey,
      'titleColor': Colors.white
    },
    {
      'bkColor': HexColor('#c05859'),
      'image': 'assets/images/wifi1.png',
      'switched': true,
      'title': 'WIFI',
      'status': 'On',
      'statusColor': Colors.grey,
      'titleColor': Colors.white
    },
    {
      'bkColor': HexColor('#d49284'),
      'image': 'assets/images/motion1.png',
      'switched': true,
      'title': 'Motion Sensor',
      'status': 'On',
      'statusColor': Colors.grey,
      'titleColor': Colors.white
    },
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Column(
          children: [
            Text(
              'Living Room',
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600),
            ),
            Text(
              '5 Devices',
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 340.h,
            width: double.infinity,
            margin: EdgeInsets.all(13.w),
            child: GridView.count(
              controller: controller,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.w,
              childAspectRatio: 1 / 1.04,
              children: List.generate(
                  objs.length,
                  (index) => roomPrototypeItem(
                      bgColor: objs[index]['bkColor'],
                      image: objs[index]['image'],
                      switched: objs[index]['switched'],
                      title: objs[index]['title'],
                      status: objs[index]['status'], onChange: (value) {
                    objs[index]['switched']=value;
                    objs[index]['switched']? objs[index]['status']='On':objs[index]['status']='Off';
                  }, statusColor: objs[index]['statusColor'],
                    titleColor: objs[index]['titleColor'],
                  ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0),
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.dm),
                color: HexColor('#a987ba'),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/speaker1.png',
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Speaker',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16.sp),
                          ),
                          Text(
                            'Playing',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.3),
                                fontSize: 15.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      Switch(
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: HexColor('#8b6f98'),
                          activeTrackColor: HexColor('#8b6f98'),
                          value: switched,
                          onChanged: (value) {
                            setState(() {
                              switched = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/music.png',
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Panda, Official Music',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16.sp),
                          ),
                          Text(
                            'Designer',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.3),
                                fontSize: 15.sp),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.white,size: 25.sp,),
                      SizedBox(width: 20.w,),
                      IconButton(
                        icon: Icon(Icons.skip_previous,size: 35.sp,color: Colors.white,),
                        onPressed: () {
                          // Move backward
                          AudioService.skipToPrevious();
                        },
                      ),
                      SizedBox(width: 17.w,),
                      // IconButton(
                      //   icon: Icon(Icons.play_arrow),
                      //   onPressed: () {
                      //     // Start playback
                      //     AudioService.start(
                      //       backgroundTaskEntrypoint: audioPlayerTaskEntrypoint,
                      //       androidResumeOnClick: true,
                      //       androidNotificationChannelName: 'Audio Player',
                      //       androidNotificationIcon:
                      //           'drawable/ic_stat_music_note',
                      //     );
                      //   },
                      // ),
                      Container(
                        height: 45.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.5.r),
                          border:Border.all(
                            width: 2.w,
                            color: Colors.white
                          )
                        ),
                        child: IconButton(
                          icon: Icon(Icons.pause,size: 28.sp,color: Colors.white,),
                          onPressed: () {
                            // Pause playback
                            AudioService.pause();
                          },
                        ),
                      ),
                      SizedBox(width: 17.w,),
                      IconButton(
                        icon: Icon(Icons.skip_next,size: 35.sp,color: Colors.white,),
                        onPressed: () {
                          // Move forward
                          AudioService.skipToNext();
                        },
                      ),
                      SizedBox(width: 30.w,),
                      Row(
                        children: [
                          Image.asset('assets/images/icon-audio.png'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Text('24',style:TextStyle(color: Colors.white),),
                        ]
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class AudioPlayerTask extends BackgroundAudioTask {
  @override
  onStart(Map<String, dynamic>? params) async {
    // Implement audio playback logic here
    // This method is called when the audio playback starts
  }

  @override
  onPlay() async {
    // Implement logic for when playback starts
  }

  @override
  onPause() async {
    // Implement logic for when playback is paused
  }

  @override
  onSkipToNext() async {
    // Implement logic for skipping to the next track
  }

  @override
  onSkipToPrevious() async {
    // Implement logic for skipping to the previous track
  }
}
