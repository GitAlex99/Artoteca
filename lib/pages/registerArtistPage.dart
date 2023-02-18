import 'package:cherry_v_1_0_1/buttons/registerButton.dart';
import 'package:cherry_v_1_0_1/hiddenDrawerNotLog.dart';
import 'package:cherry_v_1_0_1/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../buttons/loginButton.dart';
import '../buttons/square_tile.dart';
import '../services/hiddenDrawerLog.dart';
import 'artistDataUpload.dart';


class RegisterArtistPage extends StatefulWidget {
  const RegisterArtistPage({Key? key}) : super(key: key);

  @override
  State<RegisterArtistPage> createState() => _RegisterArtistPageState();
}

class _RegisterArtistPageState extends State<RegisterArtistPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswrodController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async{
    if(passwordConfirm_()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim()
      );
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ArtistDataUpload(email: _emailController.text.trim())));
    }
  }
  bool passwordConfirm_(){
    if(_passwordController.text.trim() == _confirmPasswrodController.text.trim()){
      return true;
    }
    else{
      return false;
    }
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

                    SizedBox(height: 50),
                    Text(
                      "Hey register below",
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
                            controller: _confirmPasswrodController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Confirm password',
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 50),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: MyButtonReg(
                        onTap: signUp,
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
                            onTap: () => AuthService().signInWithGoogle(),
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
                          'I am a member',
                          style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),

                        ),
                        SizedBox(width: 4),
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
