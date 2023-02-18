import 'package:cherry_v_1_0_1/pages/logOut.dart';
import 'package:cherry_v_1_0_1/services/hiddenDrawerLog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LateralBarProfile extends StatelessWidget {
  String? email = FirebaseAuth.instance.currentUser?.email;
  LateralBarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context)
        ],
      )
        ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.blue.shade700,
      padding: EdgeInsets.only(
        top: MediaQuery
            .of(context)
            .padding
            .top,
      ),
      child: Column(
        children:  [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 52,
            backgroundImage: ExactAssetImage("assets/fotoProfilo.jpg"),
          ),
          SizedBox(height: 40),
          Text(
            email!,
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HiddenDrawerLog()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favourites'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('My info'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LogOut()));
            },
          ),
        ],
      ),
    );
  }
}
