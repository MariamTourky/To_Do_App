import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/layout/home_layout.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image(
        image: AssetImage("assets/images/light_splash.png"),
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
