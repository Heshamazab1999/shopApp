import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/component/Text_field.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  //final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: K.mainColor),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                 CustomTextField(
                      type: TextInputType.name,
                      onChanged: (username) {
                    //    controller.changeUserName(username);
                      },
                    //  errorLabel: controller.username.error,
                     // controller: controller.editingControllerUserName,
                      label: "Username",
                      iconPrefix: Icon(Icons.email),
                      color: K.IconColor,
                      fillColor: K.TextFieldColor,
                    ),
                SizedBox(
                  height: 10,
                ),
                 CustomTextField(
                      type: TextInputType.name,
                      onChanged: (password) {
                    //    controller.changePassword(password);
                      },
                    //  errorLabel: controller.password.error,
                     // controller: controller.editingControllerPassword,
                      icon: Icon(Icons.visibility_outlined),
                      iconPrefix: Icon(Icons.lock_outline),
                      label: "Password",
                      color: K.IconColor,
                      fillColor: K.TextFieldColor,
                    ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 80,
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () {
                          // controller.login();
                          // controller.editingControllerPassword.clear();
                       //   controller.editingControllerUserName.clear();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: K.secondColor, fontSize: 20),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(fontSize: 20, color: K.IconColor),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(color: K.mainColor, fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
