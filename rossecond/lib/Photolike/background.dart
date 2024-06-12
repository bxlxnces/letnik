import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: BoxConstraints.expand(height: double.maxFinite),
      child: Image.asset('assets/images/bali.jpg', fit: BoxFit.cover),
    );
  }
}
