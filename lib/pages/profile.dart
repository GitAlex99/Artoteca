import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> imageUrls = [
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
              height: 130,
              child: CircleAvatar(
                radius: 61,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: ExactAssetImage("assets/ragazza.jpg"),
                ),
              )
          ),
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Text("Jude",
                style: TextStyle( fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text("Painter",
                style: TextStyle( fontSize: 15,fontStyle: FontStyle.italic),
              ),
            ),
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("58",
                      style: TextStyle(fontSize: 20)
                  ),
                  Text("POSTS",
                    style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Column(
                children: <Widget>[
                  Text("25.643",
                      style: TextStyle(fontSize: 20)
                  ),
                  Text("FOLLOWERS",
                    style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Column(
                children: <Widget>[
                  Text("564",
                      style: TextStyle(fontSize: 20)
                  ),
                  Text("FOLLOWING",
                    style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 35),
          Center(
            child: Container(
              width: 300,
              child: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.blue,
                label: Text("Follow"),
              ),
            ),
          ),
          SizedBox(height: 30),
          GridView.count(
              mainAxisSpacing: 10,
              padding: EdgeInsets.symmetric(horizontal: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              children: <Widget>[
                Container(
                  height: 20,
                    child: Image.asset("assets/quadri/q1.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q2.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q3.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q5.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q4.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q6.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q8.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q9.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q10.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q11.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q12.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q13.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q14.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q2.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q3.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q1.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q6.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q5.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q4.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q8.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q9.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q7.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q11.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q12.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q10.jpeg")
                ),
                Container(
                    height: 20,
                    child: Image.asset("assets/quadri/q14.jpeg")
                ),
              ]
          ),
        ],
      ),
    );
  }
}

