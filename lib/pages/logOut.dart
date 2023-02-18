import 'package:cherry_v_1_0_1/hiddenDrawerNotLog.dart';
import 'package:flutter/material.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              children: [
          Container(
          child: Center(
          child: Text(
              "You logged out"
          )

      ),
    ),
                SizedBox(height: 25),
                GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HiddenDrawerNotLog()));
              },
                  child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text("Return to home page",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
