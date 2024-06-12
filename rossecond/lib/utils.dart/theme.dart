import 'package:flutter/material.dart';

import './constants.dart';

ThemeData basicTheme() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: kPrimaryColor,

      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: MediumTextSize,
          color: Colors.purple,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontNameDefault,
          fontSize: MediumTextSize,
          fontWeight: FontWeight.w800,
          color: kSecondaryColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: FontNameDefault,
          fontSize: BodyTextSize,
          color: Colors.green,
        ),
      ),

      iconTheme: IconThemeData(
        // color: Colors.red,
        size: 25.0,
        color: Colors.blue,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.red,
        foregroundColor: Colors.purple,
      ),

      hintColor: Colors.orange,
      buttonTheme: ButtonThemeData(
        height: 80,
        buttonColor: Colors.deepPurple,
        textTheme: ButtonTextTheme.accent,
      ),

      // bottomAppBarColor: Colors.deepPurple,
      // cardColor: Colors.orange.shade100,
      // scaffoldBackgroundColor: Colors.yellow,
    );
