import 'package:flutter/material.dart';

class PageViewItems extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  double a;
  double b;
  PageViewItems(this.image, this.title, this.subTitle, this.a, this.b, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Image.asset(image,width: 229.68, ),
        SizedBox(
          height: a,
        ),
        Text(
          title,
          style: TextStyle(
              inherit: false,
              fontFamily: 'Poppins',
              fontSize: 20,
              color: Color(0XFF2F2E41),
              fontWeight: FontWeight.w300),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: b,
        ),
        Text(
          subTitle,
          style: TextStyle(
              inherit: false,
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Color(0XFF78787C),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
//'El Shopping''Explore  top organic fruits & grab them'
