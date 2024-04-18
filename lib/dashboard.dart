import 'package:app_clean_arc/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';

class AddDevice extends StatefulWidget {
//   AddDevice(this.roomKind);
//  final String roomKind;
  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  ScrollController controller = ScrollController();
  int _selectedIndex = -1;
  bool addButton=false;
  String? code;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map>devices=[
  {
    'name':'Smart TV',
    'image':'assets/images/tv.png',
  },
  {
    'name':'Speaker',
    'image':'assets/images/speaker.png',
  },
  {
    'name':'Motion',
    'image':'assets/images/motion.png',
  },
  {
    'name':'Fan',
    'image':'assets/images/fanDevice.png',
  },
  {
    'name':'Lamp',
    'image':'assets/images/lamp.png',
  },
  {
    'name':'Wifi',
    'image':'assets/images/wifi.png',
  },
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Add Device',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130.h,
            margin: EdgeInsets.only(
              left: 45.w,
              right: 45.w,
              top: 15.h,
            ),
            child: Row(
              children: [
                GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.dm),
                          color: HexColor('#7F98C1'),
                        ),
                        child: Image.asset(
                          'assets/images/barcode.png',
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'QR code',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  onTap: () {
                    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                        context: context,
                        onCode: (code) {
                          setState(() {
                            this.code = code;
                          });
                        });
                  },
                ),
                const Spacer(),
                GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.dm),
                          color: HexColor('#A798BB'),
                        ),
                        child: Image.asset(
                          'assets/images/scan.png',
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Scan for nearby',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  onTap: () {
                    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                        context: context,
                        onCode: (code) {
                          setState(() {
                            this.code = code;
                          });
                        });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: Text(
              'Devices',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: GridView.count(
              controller: controller,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 20.w,
              childAspectRatio: 1 / 0.6,
              children: List.generate(
                  devices.length,(index)=>DeviceWidget(image: devices[index]['image'], name: devices[index]['name'], onTap: () {
                setState(() {
                  _selectedIndex = index;
                  addButton=true;
                });
              }, isSelected: _selectedIndex==index,)
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          addButton? Container(
            margin: EdgeInsets.symmetric(horizontal: 120.w),
              child: CustomButton(
                active: true,
                  circular: 12.r,
                  backgroundColor: HexColor('#4FC070'), textColor: Colors.white, text: 'Add', onPress: () {
                scaffoldKey.currentState?.showBottomSheet((context) {
                  return Container(
                    decoration: BoxDecoration(
                        color:HexColor('#FFFFFF'),
                        borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(50.dm),
                        topRight: Radius.circular(50.dm),
                      )
                    ),
                    padding: EdgeInsets.all(25.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start
                          ,children: [
                            IconButton(onPressed: (){
                              setState(() {
                                Navigator.pop(context);
                              });
                            }, icon: Icon(Icons.arrow_back)),
                            SizedBox(width: 40.w,),
                            Text('Choose location',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight:FontWeight.w600,
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text('Bed Room',style: TextStyle(
                          fontSize: 24.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomButton(
                          active: true,
                            circular: 12.r,
                            backgroundColor: HexColor('#4FC070'),
                            textColor: Colors.white,
                            text: 'Done',
                            onPress: (){
                              setState(() {
                              Navigator.pop(context);
                              });
                            }, fontWeight: FontWeight.w700, fontSize: 24.sp, width: double.infinity, height: 45.h,
                        )
                      ],
                    ),
                    height: 205.h,
                    width: double.infinity,
                  );
                });
              }, fontWeight: FontWeight.w600, fontSize: 16.sp, width: 130.w, height: 40.h,)):Container(),
         addButton? SizedBox(height: 10.h,):SizedBox(height: 49.h,),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                top: 12.h
              ),
              height: 63.5.h,
              width: double.infinity,
              decoration: BoxDecoration(
               color: HexColor('#f3f3f3'),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0, // Spread radius is set to 0
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Not Now ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: HexColor('#4FC070')
                  ),
                ),
              ),
            ),
            onTap: (){
              setState(() {
                _selectedIndex=-1;
                addButton=false;
              });
            },
          ),
        ],
      ),
    );
  }
}
