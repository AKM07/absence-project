import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {Key? key, required this.text, required this.editingController, required this.isPassword})
      : super(key: key);
  final String text;
  final TextEditingController editingController;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: true,
      keyboardType: TextInputType.number,
      controller: editingController,
      // validator: (val) {
      //   return val.length > 0
      //       ? null
      //       : "Nomor Telepon tidak boleh kosong.";
      // },
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.black, fontSize: 16),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC2C7CB)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC2C7CB)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC2C7CB)),
        ),
        filled: true,
        fillColor: Color(0xFF263238).withOpacity(0.2)
      ),
    );
  }
}
