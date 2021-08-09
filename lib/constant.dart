import 'package:flutter/material.dart';

class K {
  static const textFieldTextStyle = TextStyle(fontSize: 16);

  static const textFieldDecoration = InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: K.mainColor),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          )));
  static const secondColor = Colors.white;
  static const BlackColor = Color(0xFF090909);
  static const IconColor = Colors.grey;
  static const TextFieldColor = Color(0xFFfafafa);
  static const mainColor = Colors.blue;

}