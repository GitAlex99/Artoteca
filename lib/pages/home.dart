import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
                SizedBox(height: 40),
                Text(
                    "Borrow ART like you borrow a book",
                  style: TextStyle(fontSize: 45),
                ),
                SizedBox(height: 15),
                Text(
                  "Feel like in a museum, from your sofa\n\n\nWith Artoteca you can access a wide range of visual artists in London and rent their works from just a month up to a year. Discover new upcoming artists and follow the latest trends without having to purchase. Easily delivered to your door.\n\nIf you are looking to buy, all our paintings are also up for sale, allowing you to try a few before making your final choice",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          Container(
            height: 1700,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("Discover, rent and buy artworks",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: ExactAssetImage("assets/immagine_home1.png")
                ),
                SizedBox(height: 20),
                Text("Discover",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Access artworks from upcoming visual\nartists in your area, new artits added weekly",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                CircleAvatar(
                    radius: 100,
                    backgroundImage: ExactAssetImage("assets/immagine_home2.png")
                ),
                SizedBox(height: 20),
                Text("Rent",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "At your terms, to your door.\nChoose your prefered rental period, from\n one month up to one year",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                CircleAvatar(
                    radius: 100,
                    backgroundImage: ExactAssetImage("assets/immagine_home3.png")
                ),
                SizedBox(height: 20),
                Text("Buy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "All our artworks are up for sale, allowing you\nto browse, try in your house and the buy",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/instagram_logo.png",
                      height: 30,
                    ),
                    SizedBox(width: 28),
                    Icon(
                        size : 38,
                        Icons.facebook
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/twitter_logo.png",
                      height: 49,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 50),

                Column(
                    children: [
                      Text("Products",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                      SizedBox(height: 10),
                      Text("Artworks",),
                      SizedBox(height: 10),
                      Text("How it works"),
                      SizedBox(height: 10),
                      Text("Articles"),
                      SizedBox(height: 30),
                      Text("Support",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("Artist login"),
                      SizedBox(height: 10),
                      Text("Documentation"),
                      SizedBox(height: 10),
                      Text("Help Center"),
                      SizedBox(height: 30),
                      Text("Company",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("About"),
                      SizedBox(height: 10),
                      Text("Team"),
                      SizedBox(height: 10),
                      Text("Carrers"),
                      SizedBox(height: 10),
                      Text("News"),
                      SizedBox(height: 30),
                      Text("Legal",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("Privacy Policy"),
                      SizedBox(height: 10),
                      Text("Terms"),
                    ],
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
