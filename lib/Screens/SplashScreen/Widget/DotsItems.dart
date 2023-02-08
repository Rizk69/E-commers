import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotsItems extends StatelessWidget {
  double dotsItems;
  DotsItems(this.dotsItems, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotsItems,
      decorator: DotsDecorator(
          color: Colors.white,
          activeColor: Color(0XFF69A03A),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Color(0XFF69A03A)))),
    );
  }
}
