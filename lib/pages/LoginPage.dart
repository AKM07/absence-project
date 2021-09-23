import 'package:flutter/material.dart';
import 'package:mobile_skeleton/constants/Constants.dart';
import 'package:mobile_skeleton/pages/HomePage.dart';
import 'package:mobile_skeleton/pages/MainPage.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';
import 'package:mobile_skeleton/widgets/CommonTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: SizeUtil.screenWidth,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Image.asset("assets/images/app_logo.png"),
                SizedBox(
                  height: 20,
                ),
                CommonTextField(
                  text: "Username",
                  editingController: _usernameController,
                  isPassword: false,
                ),
                SizedBox(
                  height: 20,
                ),
                CommonTextField(
                  text: "Password",
                  editingController: _passwordController,
                  isPassword: true,
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  child: Container(
                    width: defaultSize * 20,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(Constants.appGreenColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
