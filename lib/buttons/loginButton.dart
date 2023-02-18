import 'package:flutter/material.dart';

class MyButtonLogin extends StatelessWidget {

  final Function() onTap;

  const MyButtonLogin({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
              "sign In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              )
          ),
        ),
      ),
    );
  }
}

