import 'dart:js';

import 'package:delivery_app/utils/my_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imageBanner(context),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Row _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: (){
            
          },
          child: Text(
            'Registrate',
            style: TextStyle(
                color: MyColors.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _buttonLogin() {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: const Text('Login'),
        ));
  }

  Container _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(40)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'correo electronico',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Container _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(40)),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Contraseña',
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Container _imageBanner(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.22, bottom: 50),
      child: Image.asset(
        'assets/images/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
