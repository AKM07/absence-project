import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:mobile_skeleton/constants/Constants.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';

class PermitPage extends StatefulWidget {
  const PermitPage({Key? key}) : super(key: key);

  @override
  _PermitPageState createState() => _PermitPageState();
}

class _PermitPageState extends State<PermitPage> {
  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Perizinan",
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
      body: SafeArea(
        child: Container(
          width: SizeUtil.screenWidth,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  showCursor: true,
                  // onSaved: (val) => phone = val!,
                  keyboardType: TextInputType.phone,
                  // validator: (val) {
                  //   return val!.length > 0
                  //       ? null
                  //       : "Perizinan tidak boleh kosong.";
                  // },
                  maxLines: 30,
                  decoration: InputDecoration(
                    hintText: "Masukkan Perizinan",
                      hintStyle:
                          TextStyle(color: Color(0xFFC2C7CB), fontSize: 14),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF5F6F8)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF5F6F8)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF5F6F8)),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBFBFB)),
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
                      "Kirim",
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
