import 'package:flutter/material.dart';
import 'package:mobile_skeleton/constants/Constants.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';
import 'package:mobile_skeleton/widgets/CommonTextField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _passwordConfirmController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    return Scaffold(
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
                  height: 5,
                ),
                CommonTextField(
                  text: "Password",
                  editingController: _passwordController,
                  isPassword: true,
                ),
                SizedBox(
                  height: 5,
                ),
                CommonTextField(
                  text: "Confirm",
                  editingController: _passwordConfirmController,
                  isPassword: true,
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: defaultSize * 20,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(Constants.appOrangeColor),
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
