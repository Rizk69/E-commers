import 'package:ecommerce/Screens/SplashScreen/Widget/PageViewItems.dart';
import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
   CustomPage({Key? key, required this.pageController}) : super(key: key);
 PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: PageView(
        controller:pageController ,
        children: [
          PageViewItems('asset Image/Images/Scroll Group 2.jpg', 'E Shopping',
              "Explore  top organic fruits & grab them", 48, 18),
          PageViewItems(
              'asset Image/Images/Scroll Group 3.jpg',
              'Delivery on the way',
              "Get your order by speed delivery",
              103,
              18),
          PageViewItems('asset Image/Images/Scroll Group 4.png',
              'Delivery Arrived', "Order is arrived at your Place", 20, 10)
        ],
      ),
    );
  }
}
