import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  String textName;
  TextButtons(this.textName, {Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        decoration: BoxDecoration(
            color: Color(0XFF69A03A), borderRadius: BorderRadius.circular(8)),
        alignment: AlignmentDirectional.center,
        height: 50,
        child: Text(
          textName,
          style: TextStyle(color: Colors.white, inherit: false, fontSize: 18),
        ),
      ),
    );
  }
}
