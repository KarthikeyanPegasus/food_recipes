import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassButton1 extends StatelessWidget {
  const GlassButton1({
    Key? key,
    required this.width,
    required this.textfield,
    required this.func,
  }) : super(key: key);

  final double width;
  final String textfield;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      height: 60,
      width: width * 0.8,
      borderRadius: 25,
      blur: 15,
      alignment: Alignment.center,
      border: 0,
      linearGradient: LinearGradient(colors: [
        Colors.white.withOpacity(0.2),
        Colors.white38.withOpacity(0.2)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      borderGradient: LinearGradient(colors: [
        Colors.white24.withOpacity(0.2),
        Colors.white70.withOpacity(0.2)
      ]),
      child: TextButton(
        onPressed: () {
          func;
        },
        child: Container(
          height: 60,
          width: width * 0.8,
          alignment: Alignment.center,
          child: Text(
            textfield,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
