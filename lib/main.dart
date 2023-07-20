import 'package:flutter/material.dart';
import 'package:news_app_api/views/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '/views/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: SplashScreen(),
      );
    });
  }
}
