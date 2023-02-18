import 'package:cherry_v_1_0_1/hiddenDrawerNotLog.dart';
import 'package:cherry_v_1_0_1/services/hiddenDrawerLog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(FirebaseAuth.instance.currentUser == null) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: HiddenDrawerNotLog(),
      );
    }
    else{
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.grey),
          home: HiddenDrawerLog(),
      );
    }
  }
}

