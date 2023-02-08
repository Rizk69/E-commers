import 'package:ecommerce/Screens/Login%20Screen/Widget/Google%20login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String route = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Image.asset(
            'asset Image/Images/Scroll Group 1.png',
            height: 200,
            width: 250,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Fruit Market',
              style: TextStyle(
                color: Color(0XFF69A03A),
                fontSize: 55,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GoogleLogin(
                image: 'asset Image/Images/Scroll Group 2.png',
              ),
              GoogleLogin(
                image: 'asset Image/Images/Scroll Group 4.jpg',
              )
            ],
          )
        ],
      ),
    );
  }
}
