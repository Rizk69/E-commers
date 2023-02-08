import 'package:flutter/material.dart';

class GoogleLogin extends StatelessWidget {
 GoogleLogin( {Key? key, required  this.image}) : super(key: key);

  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 160,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0XFF707070)),
          color:Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
              image,width:30 ,
          ),
          Text('Log In With   ',style: TextStyle(color:Color(0XFF707070),fontSize: 14 ),)
        ],
      ),
    );
  }
}

