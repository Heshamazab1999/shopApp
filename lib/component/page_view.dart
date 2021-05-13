import 'package:flutter/material.dart';
class BoardingModel {
  final String label;
  final String image;

  BoardingModel({this.label, this.image});
}
Widget pageViewScreen(BoardingModel model) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image(image: AssetImage(model.image)),
    SizedBox(
      height: 50,
    ),
    Text(model.label, style: TextStyle(fontSize: 25)),

  ],
);
