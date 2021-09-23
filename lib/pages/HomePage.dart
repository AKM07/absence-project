import 'package:flutter/material.dart';
import 'package:mobile_skeleton/constants/Constants.dart';
import 'package:mobile_skeleton/pages/AbsenceReportPage.dart';
import 'package:mobile_skeleton/pages/PermitPage.dart';
import 'package:mobile_skeleton/pages/SylabusPage.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';
import 'package:mobile_skeleton/widgets/CommonDashboardMenuItem.dart';

import 'WeeklyAbsencePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 21,
              height: 21,
              color: Color(Constants.appGreenColor),
            ),
            SizedBox(
              width: 2,
            ),
            Container(
              width: 21,
              height: 21,
              color: Color(Constants.appOrangeColor),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: defaultSize * 5,
      ),
      body: SafeArea(
        child: Container(
          width: SizeUtil.screenWidth,
          height: SizeUtil.screenHeight,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonDashboardMenuItem(
                color: 0xFF4E74A0,
                icon: "assets/images/ic_absence_check.png",
                actionClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AbsenceReportPage()),
                  );
                },
                menuName: "Cek Kehadiranmu ",
                isWithIcon: true,
              ),
              SizedBox(
                height: 10,
              ),
              CommonDashboardMenuItem(
                color: 0xFFF58220,
                icon: "assets/images/ic_weekly_schedule.png",
                actionClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WeeklyAbsencePage()),
                  );
                },
                menuName: "Jadwal Minggu Ini",
                isWithIcon: true,
              ),
              SizedBox(
                height: 10,
              ),
              CommonDashboardMenuItem(
                color: 0xFF67AC7E,
                icon: "assets/images/ic_sylabus.png",
                actionClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SylabusPage()),
                  );
                },
                menuName: "Silabus Materi ",
                isWithIcon: true,
              ),
              SizedBox(
                height: 10,
              ),
              CommonDashboardMenuItem(
                color: 0xFFDD76D9,
                icon: "assets/images/ic_permit.png",
                actionClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PermitPage()),
                  );
                },
                menuName: "Lakukan Perizinan",
                isWithIcon: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
