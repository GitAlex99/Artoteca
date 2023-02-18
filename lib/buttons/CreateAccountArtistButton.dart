import 'package:cherry_v_1_0_1/pages/registerArtistPage.dart';
import 'package:flutter/material.dart';

class uploadDataartistbutton extends StatelessWidget {


  const uploadDataartistbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new RegisterArtistPage())),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
              "Create your account",
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

