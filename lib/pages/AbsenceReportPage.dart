import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AbsenceReportPage extends StatefulWidget {
  const AbsenceReportPage({Key? key}) : super(key: key);

  @override
  _AbsenceReportPageState createState() => _AbsenceReportPageState();
}

class _AbsenceReportPageState extends State<AbsenceReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Laporan Kehadiran",
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
