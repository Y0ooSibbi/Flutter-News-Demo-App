import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_api/views/homepage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> with SingleTickerProviderStateMixin{
   AnimationController animationController;
   Animation<double> animation;

  startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigatorPage);
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.ease);
    animationController.forward();
    startTimer();
  }

  void navigatorPage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: ScaleTransition(
            scale: animation,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset("assets/images/NewsImage.png"),
            ),
          ),
        ),
      ),
    );
  }
}
