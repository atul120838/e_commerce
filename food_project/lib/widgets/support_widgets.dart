import 'package:flutter/material.dart';

class Appwidget {

  static TextStyle boldTextFeildStyle() {
    return TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
        , fontFamily: 'Popines');
  }

  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black
        , fontFamily: 'Popines');
  }

  static TextStyle LightTextFeildStyle() {
    return TextStyle(fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black38
        , fontFamily: 'Popines');
  }

  static TextStyle semiboldTextFeildStyle() {
    return TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black
        , fontFamily: 'Popines');
  }
}