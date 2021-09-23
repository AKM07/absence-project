import 'package:flutter/material.dart';
import 'package:mobile_skeleton/utils/injector.dart';

import 'constants/Constants.dart';
import 'model/sqliteModel.dart';
import 'pages/DashboardPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await baseDio();
  final bool isInitialized = await AwesomeDBModel().initializeDB();
  if (isInitialized) {
    runApp(MyApp());
  } else {
    debugPrint("fail to init db");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      home: DashboardPage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => DashboardPage(),
        // '/home': (context) => HomePage(),
      },
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(color: Color(Constants.appMainColor), elevation: 0),
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Color(0xFFe0e0e0),
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
