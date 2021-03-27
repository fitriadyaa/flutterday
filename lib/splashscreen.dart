import 'dart:async';

import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startTimer() async {
    var _durasi = Duration(seconds: 2);
    return Timer(_durasi, pindahHalamanHome);
  }

  void pindahHalamanHome() {
    Navigator.of(context).pushReplacementNamed('home');
  }

  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/logo.png"),
              width: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.event),
                Text(
                  "Your cute simple jurnal",
                  style: TextStyle(fontFamily: 'IndieFlower', fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
