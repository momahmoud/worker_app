
import 'package:flutter/material.dart';
import 'package:worker/helpers/style.dart';


//  splash screen

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
