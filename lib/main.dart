import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/Routes/app_route.dart';
import 'package:shop_app/Routes/app_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcome_screen,
      getPages: AppScreen.screens,
    );
  }
}
