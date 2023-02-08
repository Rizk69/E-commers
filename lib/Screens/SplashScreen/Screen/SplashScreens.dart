import 'package:ecommerce/Screens/SplashScreen/Screen/Start%20Screen.dart';
import 'package:flutter/material.dart';


class SplashScreens extends StatefulWidget {
  static const String route = 'splash';

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return  StartScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF69A03A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
          ),
          Text(
            'Fruit Market',
            style: TextStyle(
              color: Colors.white,
              fontSize: 51,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'asset Image/Images/mix_fruit_png_11@2x.png',
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
