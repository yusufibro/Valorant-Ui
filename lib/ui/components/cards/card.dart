import 'package:flutter/material.dart';

class CardsV extends StatelessWidget {
  Color color1;
  Color color2;
  CardsV({Key? key, required this.color1, required this.color2,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            color1,
            color2,
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
        ),
      ),
    );
  }
}
