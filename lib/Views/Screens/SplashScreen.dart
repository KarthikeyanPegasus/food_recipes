import 'package:flutter/material.dart';
import 'package:food_recipes/Views/Screens/Homepage.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: Homescreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc: 'assets/images/logo.png',
        backgroundColor: Colors.white,
      ),
    );
  }
}
