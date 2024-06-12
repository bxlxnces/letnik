import 'package:flutter/material.dart';
import 'package:rossecond/Photolike/aboutiland.dart';
import 'package:rossecond/Photolike/background.dart';
import 'package:rossecond/Photolike/heart.dart';

class Pageseven extends StatelessWidget {
  const Pageseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1, 1),
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}
