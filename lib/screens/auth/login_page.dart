import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginScreen extends StatelessWidget {
  double _deviceWidth;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(child: _loginPageUI(context)));
  }

  Widget _loginPageUI(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        children: [
          Container(height: 50),
          _headingAuth(),
          Container(height: 20),
          _formLogin(context),
          Container(height: 20),
          _loginButton(context),
          Container(height: 30),
          __textRegister(context),
        ],
      ),
    );
  }

  Widget _headingAuth() {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/IconeFlutterFood.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: [],
      ),
    );
  }

  Widget _formLogin(context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .6),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        children: [_emailTextField(context), _passwordTextField(context)],
      ),
    );
  }

  Widget _emailTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        contentPadding: EdgeInsets.all(20),
        hintText: 'E-mail',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _passwordTextField(context) {
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.all(20),
        hintText: 'Senha',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _loginButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/restaurants');
        },
        color: Theme.of(context).primaryColor,
        child: Text('Entrar'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget __textRegister(context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (context) => RegisterScreen()));
        Navigator.pushNamed(context, '/register');
      },
      child: Text('Não tem conta? Cadastre-se',
          style: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }
}
