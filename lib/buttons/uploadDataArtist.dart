import 'package:flutter/material.dart';

class CompleteRegistrationArtist extends StatelessWidget {

  final Function() onTap;

  const CompleteRegistrationArtist({super.key, required this.onTap});

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
              "Complete registration",
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

