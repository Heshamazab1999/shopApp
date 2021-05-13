import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/component/page_view.dart';

class WelcomeScreenController extends GetxController {
  final boardController = PageController();
  bool isLast = false;
  final List<BoardingModel> labels = [
    BoardingModel(label: "OnBoardingOne", image: "assets/images/welcome.png"),
    BoardingModel(label: "OnBoardingTwo", image: "assets/images/welcome.png"),
    BoardingModel(label: "OnBoardingThree", image: "assets/images/welcome.png"),
  ];

  setState(int index) {
    if (index == labels.length - 1) {
      isLast = true;
    } else {
      isLast = false;
    }
  }
}
