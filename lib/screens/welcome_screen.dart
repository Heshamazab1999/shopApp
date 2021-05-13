import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/component/page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shop_app/controller/welcome_screen_controller.dart';
import 'package:shop_app/screens/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  final controller = Get.put(WelcomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 15, color: Colors.deepOrange),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller.boardController,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      pageViewScreen(controller.labels[index]),
                  itemCount: controller.labels.length,
                  onPageChanged: (int index) {
                    controller.setState(index);
                  },
                ),
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                      controller: controller.boardController, // PageController
                      count: controller.labels.length,
                      effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          dotHeight: 10,
                          activeDotColor: Colors.deepOrange,
                          dotWidth: 10,
                          spacing: 5,
                          expansionFactor: 4), // your preferred effect
                      onDotClicked: (index) {}),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (controller.isLast) {
                        Get.offAll(LoginScreen());
                      }
                      controller.boardController.nextPage(
                          duration: Duration(milliseconds: 800),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    heroTag: "First",
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.deepOrange,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
