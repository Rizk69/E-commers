import 'package:ecommerce/Screens/Login%20Screen/Widget/TextFeild.dart';
import 'package:ecommerce/Screens/Login%20Screen/Widget/TextLogin.dart';
import 'package:ecommerce/Screens/SplashScreen/Widget/TextBouttons.dart';
import 'package:flutter/material.dart';

class LoginData extends StatelessWidget {
  const LoginData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLogin('Enter Your Name'),
            TextFieldButtom(maxLines: 1),
            TextLogin('Enter Your Phone Number'),
            TextFieldButtom(maxLines: 1),
            TextLogin('Add Address'),
            TextFieldButtom(maxLines: 5),
            SizedBox(height: 20,),
            TextButtons('')


          ],
        ),
      ),
    );
  }
}
