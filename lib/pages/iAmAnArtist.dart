import 'package:flutter/material.dart';

import '../buttons/CreateAccountArtistButton.dart';

class IAmArtist extends StatelessWidget {
  const IAmArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 2950,
            margin: EdgeInsets.all(15),
            child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/logo_artoteca.png",
                    height:70,
                  ),
                  Text("Artoteca"),
                ],
              ),
              SizedBox(height: 70),
              Text(
                  "With Artoteca, It takes only 10 minutes to start selling your art!",
                   style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 70),
              Text(
                "How it Works",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(height: 50),
              Icon(Icons.account_circle, size: 200 ),
              SizedBox(height: 30),
              Text(
                "Create your account",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "We ask you some basic information, such as your name, formation, photo and a short description of your style.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Icon(Icons.account_balance, size: 200 ),
              SizedBox(height: 30),
              Text(
                "Read out contract terms",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "We have standard terms that we apply to all our partners. Once we have verified your profile, you will receive a link containing all terms of the agreement.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Icon(Icons.upload, size: 200 ),
              SizedBox(height: 30),
              Text(
                "Upload your artworks",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Upload a photo of your artworks following our guidance and start building your portfolio.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Icon(Icons.monetization_on_outlined, size: 200 ),
              SizedBox(height: 30),
              Text(
                "Understand your costs",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Our services include delivery and insurance, understand the impact on your returns",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Icon(Icons.payments_outlined, size: 200 ),
              SizedBox(height: 30),
              Text(
                "Decide your pricing",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Based on our costs and your return, decide your pricing for rental and sale.We will always help you understand if your pricing is in line with the market",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              Icon(Icons.airplanemode_on, size: 200 ),
              SizedBox(height: 30),
              Text(
                "You are online!",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "You are set to go",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 70),
              Text(
                "Join us!",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: uploadDataartistbutton(),
              ),
            ],
          ),
        ),
    ],
      ),
    );
  }
}
