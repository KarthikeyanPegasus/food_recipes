import 'package:flutter/material.dart';
import 'package:food_recipes/Views/Constants/Constantcolors.dart';
import 'package:food_recipes/Views/Widgets/introSlideMembers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class IntroSlides extends StatelessWidget {
  const IntroSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _height = size.height;
    double _width = size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: Builder(
          builder: (context) =>
              LiquidSwipe(enableLoop: false, enableSideReveal: true, pages: [
                IntroSlideMembers(
                  imageUrl:
                      "https://www.themealdb.com//images//media//meals//uvuyxu1503067369.jpg",
                  textinMiddle: "Secret Recipes in One Place.",
                ),
                IntroSlideMembers(
                  imageUrl:
                      "https://www.themealdb.com//images//media//meals//lpd4wy1614347943.jpg",
                  textinMiddle: "With varity of Dishes",
                ),
                IntroSlideMembers(
                  imageUrl:
                      "https:\/\/www.themealdb.com\/images\/media\/meals\/wqqvyq1511179730.jpg",
                  textinMiddle: "Amazing Fluid Designs",
                  visiblility: 1,
                )
              ])),
    );
  }
}
