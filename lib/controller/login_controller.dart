import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shop_app/controller/base_controller.dart';
import 'package:shop_app/model/register_model.dart';
import 'package:shop_app/model/validation_model.dart';
import 'package:shop_app/services/login_services.dart';

class LoginController extends BaseController {
  LoginServices loginServices = new LoginServices();
  final _username = Valid().obs;
  final _password = Valid().obs;
  RxBool _saving = false.obs;
  TextEditingController editingControllerUserName = new TextEditingController();
  TextEditingController editingControllerPassword = new TextEditingController();

  bool get saving => _saving.value;

  Valid get username => _username.value;

  Valid get password => _password.value;

  changeUserName(String username) {
    if (username.trim().length < 5) {
      _username.value = Valid(error: "يجب ان يكون اكبر من 5");
    } else {
      _username.value = Valid(value: username);
    }
  }

  changePassword(String password) {
    if (password.trim().length < 5) {
      _password.value = Valid(error: "يجب ان يكون اكبر من 5");
    } else {
      _password.value = Valid(value: password);
    }
  }

  // login() async {
  //   if (_username.value.isValid() &&
  //       _password.value.isValid()
  //   ) {
  //     _saving.value = true;
  //     UserModel user = await loginServices.login(_username.value.value, _password.value.value);
  //     _saving.value = false;
  //
  //   } else {
  //     print("ssss");
  //   }
  // }
}
