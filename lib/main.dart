import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget SplashscreenSpeedWagon = SplashScreenView(
      navigateRoute: Home(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "images/splashscreen.png",
      text: "SpeedWagon",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: HexColor("#E5E5E5"),
    );

    return MaterialApp(
      title: 'SpeedWagon',
      home: SplashscreenSpeedWagon,
    );
  }
}
