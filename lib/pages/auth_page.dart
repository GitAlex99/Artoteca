import 'package:cherry_v_1_0_1/pages/login.dart';
import 'package:cherry_v_1_0_1/pages/registerPage.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

void toggleScreens(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return loginPage(showRegisterPage: toggleScreens);
    }
    else{
      return RegisterPage(showLoginPage: toggleScreens);

    }
  }
}
