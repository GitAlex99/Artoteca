import 'package:cherry_v_1_0_1/lateralMenu/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? email = FirebaseAuth.instance.currentUser?.email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: LateralBarProfile(),
      body: ListView(
        padding : EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
      ]
    ),
    );
  }
  Widget buildCoverImage(){
    return Container(
      color: Colors.grey,
      child: Image.asset(
          "assets/sfondo.jpg",
        width: double.infinity,
        height: 230,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildProfileImage(){
    return CircleAvatar(
      radius: 70,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: ExactAssetImage(
        "assets/fotoProfilo.jpg",
      ),
    );
  }

  Widget buildTop(){
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 85),
            child: buildCoverImage()),
        Positioned(
          top: 170,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildContent(){
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(
          email!,
          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        aboutMe(),
      ],
    );
  }

  Widget aboutMe(){
    return Column(
      children: [
        Text(
            "About me:"
        ),
        const SizedBox(height: 16),
        Container(

            child: Text(
                "My name is Magela Cadenas, I was born in Montevideo, Uruguay, 1969. At the age of 13 I moved with my family to Sweden where I finished my nine-year compulsory school. One year later I started to travel. For several years I had the opportunity to travel a lot and I enjoyed visiting news countries and learning about their cultures.Before I turned back to Sweden, in 1993, I worked as sale manager for the English Institute Kerto S.A, in Uruguay and Chile for a couple of years. I enjoyed this job there I learned a lot and gained huge experience in the sales area."
            ),
        ),
        SizedBox(height: 20,),
        MaterialButton(
          onPressed: (){
            FirebaseAuth.instance.signOut();
          },
          color: Colors.blue,
          child: Text('sign out'),
        )
      ]
    );
  }
}

