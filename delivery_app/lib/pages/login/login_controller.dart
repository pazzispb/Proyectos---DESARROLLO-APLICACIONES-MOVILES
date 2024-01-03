import 'package:flutter/material.dart';

import '../../models/response_api.dart';
import '../../providers/user_provider.dart';

class LoginController{

  BuildContext? context;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  UserProvider userProvider = UserProvider();


  Future? init(BuildContext context) {
    this.context = context;
    userProvider.init(context);
  }


  void goToRegisterPage(BuildContext context){
    Navigator.pushNamed(context, 'register');
  }

  void login() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    ResponseApi? res = await userProvider.login(email, password);
    print("Respuesta: ${res?.toJson()}");
  }

}