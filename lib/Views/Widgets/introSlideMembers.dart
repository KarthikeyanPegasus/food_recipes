import 'package:flutter/material.dart';
import 'package:food_recipes/Views/Constants/Constantcolors.dart';

class IntroSlideMembers extends StatelessWidget {
  const IntroSlideMembers({
    Key? key,
    required String imageUrl,
    required String textinMiddle,
    double? visiblility,
  })  : _visiblility = visiblility,
        _imageUrl = imageUrl,
        _textinMiddle = textinMiddle,
        super(key: key);
  final double? _visiblility;

  final String _imageUrl;
  final String _textinMiddle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _width = size.width;
    double _height = size.height;
    return Container(
      height: _height,
      width: _width,
      child: Stack(
        children: [
          Stack(children: [
            Container(
              width: _width,
              height: _height,
              child: Image.network(
                _imageUrl,
                height: _height,
                width: _width,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(color: primarycolor.withAlpha(100)),
            )
          ]),
          Container(
            height: _height,
            width: _width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: _width * 0.4,
                    height: _width * 0.4,
                  ),
                  Container(
                    width: _width * 0.6,
                    child: Text(
                      _textinMiddle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  _visiblility == null
                      ? Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Text(
                            "Swipe   ---->",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : Container(
                          width: _width * 0.3,
                          height: 60,
                          margin: EdgeInsets.only(top: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: b2,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
