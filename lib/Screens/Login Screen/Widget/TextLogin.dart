import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
String name;
   TextLogin(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(name,style: TextStyle(
          color: Color(0XFF0C0B0B),
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.normal
      )),
    );
  }
}
