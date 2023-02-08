import 'package:flutter/material.dart';

class TextFieldButtom extends StatelessWidget {
  int maxLines;
  TextFieldButtom({required this.maxLines});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        maxLines: maxLines,
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Color(0XFFCCCCCC)),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color:Color(0XFF69A03A) ),
        borderRadius: BorderRadius.circular(10),
      ),
    )
      ));}
}
