import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yellow_app/signin_pages/signin_home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Signin_home()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("IMAGES/logo.png")
        ],
      ),
    );
  }
}
