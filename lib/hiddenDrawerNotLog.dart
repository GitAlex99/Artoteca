import 'package:cherry_v_1_0_1/hidden_drawer_menu_home.dart';
import 'package:cherry_v_1_0_1/pages/about.dart';
import 'package:cherry_v_1_0_1/pages/auth_page.dart';
import 'package:cherry_v_1_0_1/pages/home.dart';
import 'package:cherry_v_1_0_1/pages/iAmAnArtist.dart';
import 'package:cherry_v_1_0_1/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cherry_v_1_0_1/pages/profile.dart';


class HiddenDrawerNotLog extends StatefulWidget {
  const HiddenDrawerNotLog({Key? key}) : super(key: key);

  @override
  State<HiddenDrawerNotLog> createState() => _hiddenDrawerState();
}

class _hiddenDrawerState extends State<HiddenDrawerNotLog> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState(){
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Home',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle()
          ),
          Home2()
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        About()
      ),

      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Login',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(),
          ),
          AuthPage(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'I am an artist!',
              baseStyle: TextStyle(),
              selectedStyle: TextStyle()
          ),
          IAmArtist(),
      ),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.white,
      actionsAppBar: [IconButton(
        icon: const Icon(
          Icons.account_circle_outlined,
        ), onPressed: () {
          if(isUserLogged()) {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthPage())
            );
          }
          else{
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile())
            );
          }
          },
      ),],
      tittleAppBar: Text(''),
      screens: _pages,
      initPositionSelected: 0,
    );
  }

  bool isUserLogged(){
    if(FirebaseAuth.instance.currentUser != null){
      String? email = FirebaseAuth.instance.currentUser?.uid;
      return false;
    }
    else{
      return true;
    }
  }
}
