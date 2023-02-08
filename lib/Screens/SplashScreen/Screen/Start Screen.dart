import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/Screens/Login%20Screen/Screens/LoginScreen.dart';
import 'package:ecommerce/Screens/SplashScreen/Widget/CustomPage.dart';
import 'package:ecommerce/Screens/SplashScreen/Widget/TextBouttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  static const String route = 'FirstScreen';

  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  PageController? pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CustomPage(
            pageController: pageController,
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.22,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: 3,
                position:
                    ((pageController!.hasClients ? pageController!.page : 0) ??
                        0),
                decorator: DotsDecorator(
                    color: Colors.white,
                    activeColor: Color(0XFF69A03A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Color(0XFF69A03A)))),
              )),
          Visibility(
            visible: pageController!.hasClients
                ? pageController!.page == 2
                    ? false
                    : true
                : false,
            child: Positioned(
              top: MediaQuery.of(context).size.height * .1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  pageController!.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Color(0XFF898989), fontSize: 14, inherit: false),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: TextButtons(
                pageController!.hasClients
                    ? pageController!.page == 2
                        ? 'Get Start'
                        : 'Next'
                    : 'Next',
                onTap: () {
                  if (pageController!.page! < 2) {
                    pageController!.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  } else {
                    Get.to(() => LoginScreen(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500));
                  }
                },
              ))
        ],
      ),
    );
  }
}
