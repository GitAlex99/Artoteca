import 'package:flutter/material.dart';

class MyButtonReg extends StatelessWidget {

  final Function() onTap;

  const MyButtonReg({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
              "sign Up",
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

