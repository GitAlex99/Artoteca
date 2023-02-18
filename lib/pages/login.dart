import 'package:cherry_v_1_0_1/buttons/loginButton.dart';
import 'package:cherry_v_1_0_1/buttons/square_tile.dart';
import 'package:cherry_v_1_0_1/hiddenDrawerNotLog.dart';
import 'package:cherry_v_1_0_1/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/hiddenDrawerLog.dart';

class loginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const loginPage({Key? key,required this.showRegisterPage}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
    );
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HiddenDrawerLog()));
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
            "assets/logo_artoteca.png",
            height: 70,
          ),
            SizedBox(width: 5),
            Text("Artoteca"),
            ],
          ),
          SizedBox(height: 50),
          Text(
              "Welcome back!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: MyButtonLogin(
               onTap: signIn,
             ),
           ),

            SizedBox(height: 50),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                    ),
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                    ),
                  ],
                )
          ),

              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                      onTap: () {
                        AuthService().signInWithGoogle();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HiddenDrawerLog()));
                      },
                      imagePath: 'assets/logo_google.png'),

                  SizedBox(width: 25),

                  SquareTile(
                      onTap: (){},
                      imagePath: 'assets/logo_instagram.png'),
                ],
              ),

              SizedBox(height: 25),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Not a member',
                      style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),

      ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.showRegisterPage,
                    child: Text(
                        'Register now',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),
              ]
    ),
        )
    ),
      ),
    );
  }
}


