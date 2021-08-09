import 'package:dio/dio.dart';
import 'package:shop_app/model/register_model.dart';

class LoginServices {
  static Dio dio = Dio();
  final _authServices = new LoginServices();

  //  login(String name,String password) async {
  //   final url = "https://student.valuxapps.com/api/login";
  //
  //   try {
  //     Response response = await dio.post(url,
  //         data:{'email':name,'password':password});
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
