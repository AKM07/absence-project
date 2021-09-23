import 'package:flutter/material.dart';
import 'package:mobile_skeleton/utils/SizeUtil.dart';

class CommonDashboardMenuItem extends StatelessWidget {
  const CommonDashboardMenuItem(
      {Key? key,
      required this.menuName,
      required this.icon,
      required this.color,
      required this.actionClick,
      this.borderColor,
      required this.isWithIcon})
      : super(key: key);
  final String menuName;
  final String icon;
  final int color;
  final int? borderColor;
  final bool isWithIcon;
  final Function() actionClick;

  @override
  Widget build(BuildContext context) {
    SizeUtil().init(context);
    double defaultSize = SizeUtil.defaultSize!;
    return InkWell(
      onTap: actionClick,
      child: Container(
        width: SizeUtil.screenWidth,
        height: defaultSize * 10,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(
                color: Color(0xFFF1F1F1),
                blurRadius: 10,
              ),
            ]),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            isWithIcon ? Image.asset(icon) : Container(),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
                  menuName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
