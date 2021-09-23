import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class WeeklyAbsencePage extends StatefulWidget {
  const WeeklyAbsencePage({Key? key}) : super(key: key);

  @override
  _WeeklyAbsencePageState createState() => _WeeklyAbsencePageState();
}

class _WeeklyAbsencePageState extends State<WeeklyAbsencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Jadwal Minggu Ini",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(
            FeatherIcons.chevronLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
