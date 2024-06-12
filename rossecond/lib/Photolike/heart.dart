import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: Colors.red,
      size: 30,
    );
  }
}
