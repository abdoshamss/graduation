import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components.dart';

class SchdulePage extends StatefulWidget {
  const SchdulePage({super.key});

  @override
  State<SchdulePage> createState() => _SchdulePageState();
}

class _SchdulePageState extends State<SchdulePage> {
  List<Map> objs = [
    {
      'switched': true,
      'title': 'Leave home',
      'caption': 'FTKF60XVMV (1)',
      'titleIcon': FontAwesomeIcons.moon,
      'days': 'Sat,Sun',
      'times': '10:00 AM - 12:00 PM',
    },
    {
      'switched': false,
      'title': 'Sunrise',
      'caption': 'FTKF60XVMV (1)',
      'titleIcon': FontAwesomeIcons.cloudSun,
      'days': 'Mon,Fri,Wed',
      'times': '4:00 AM - 8:00 AM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) => Schedule(
                switched: objs[index]['switched'],
                title: objs[index]['title'],
                caption: objs[index]['caption'],
                days: objs[index]['days'],
                times: objs[index]['times'],
                titleIcon: objs[index]['titleIcon']),
            separatorBuilder: (context, index) => SizedBox(
              height: 10.h,
            ),
            itemCount: 2),
      ),
    );
  }
}
