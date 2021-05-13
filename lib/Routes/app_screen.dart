import 'package:get/get.dart';
import 'package:shop_app/Routes/app_route.dart';
import 'package:shop_app/screens/welcome_screen.dart';
import 'package:shop_app/screens/login_screen.dart';

class AppScreen {
  static final screens = [
    GetPage(name: AppRoutes.welcome_screen,
        page: () => OnBoardingScreen()),
    GetPage(name: AppRoutes.login_screen,
        page: () => LoginScreen()),
  ];
}
