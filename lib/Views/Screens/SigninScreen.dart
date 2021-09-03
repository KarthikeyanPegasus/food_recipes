import 'package:flutter/material.dart';
import 'package:food_recipes/Views/Constants/Constantcolors.dart';
import 'package:food_recipes/Views/Widgets/GlassButton1.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Stack(
            children: [
              Container(
                width: width,
                height: height,
                child: Image.network(
                  "https:\/\/www.themealdb.com\/images\/media\/meals\/ytpstt1511814614.jpg",
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(color: primarycolor.withAlpha(100)),
              )
            ],
          ),
        ),
        Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: width * 0.6,
                height: width * 0.6,
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  "Secret Recipes from famous chefs for all",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                child: GlassButton1(
                  width: width,
                  textfield: "Continue with Google",
                  func: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: GlassButton1(
                  width: width,
                  textfield: "Continue with Facebook",
                  func: () {},
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
