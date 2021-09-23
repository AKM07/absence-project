import 'package:flutter/material.dart';
import 'package:mobile_skeleton/constants/Constants.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';
import 'package:mobile_skeleton/widgets/CommonDashboardMenuItem.dart';

import 'HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedTabIndex = 0;
  List<Widget> viewContainer = [];

  @override
  void initState() {
    viewContainer = [
      HomePage(),
      HomePage(),
      HomePage(),
    ];

    selectedTabIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    final navItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              "assets/images/ic_qrcode.png",
            ),
            color: selectedTabIndex == 0 ? Colors.white : Colors.black,
          ),
          label: ""),
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              "assets/images/ic_main_menu.png",
            ),
            color: selectedTabIndex == 1 ? Colors.white : Colors.black,
          ),
          label: ""),
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              "assets/images/ic_person.png",
            ),
            color: selectedTabIndex == 2 ? Colors.white : Colors.black,
          ),
          label: ""),
    ];

    final bottomNavigationBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF3B82D4),
      items: navItems,
      currentIndex: selectedTabIndex,
      selectedItemColor: Color(Constants.appMainColor),
      unselectedItemColor: Color(0xff596375),
      selectedLabelStyle: TextStyle(color: Color(Constants.appMainColor)),
      onTap: onTabTapped,
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: IndexedStack(index: selectedTabIndex, children: viewContainer),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
