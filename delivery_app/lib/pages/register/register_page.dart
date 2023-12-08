import 'package:delivery_app/utils/my_colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imageBanner(context),
            _textFieldNombre(),
            _textFieldApellido(),
            _textFieldEmail(),
            _textFieldTelefono(),
            _textFieldPassword(),
            _textFieldConfirmPassword(),
            _buttonRegister(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldNombre() {
    return _customTextField('Nombre', Icons.person);
  }

  Widget _textFieldApellido() {
    return _customTextField('Apellido', Icons.person_outline);
  }

  Widget _textFieldEmail() {
    return _customTextField('Correo Electrónico', Icons.email);
  }

  Widget _textFieldTelefono() {
    return _customTextField('Teléfono', Icons.phone);
  }

  Widget _textFieldPassword() {
    return _customTextField('Contraseña', Icons.lock, isPassword: true);
  }

  Widget _textFieldConfirmPassword() {
    return _customTextField('Confirmar Contraseña', Icons.lock_outline, isPassword: true);
  }

  Widget _customTextField(String hintText, IconData icon, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          prefixIcon: Icon(icon, color: MyColors.primaryColor),
        ),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: () {},
        child: Text('Registrarse'),
      ),
    );
  }

  Container _imageBanner(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.22,
        bottom: 70,
      ),
      child: Image.asset('assets/images/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }
}