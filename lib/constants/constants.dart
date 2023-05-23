import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 176, 241, 255);
const secondColor = Colors.white;
const blurColor = Color.fromARGB(255, 77, 77, 77);
const double cornerRadiusPrimary = 10;
const double cornerRadiusSecondary = 5;
const List<BoxShadow> boxShadow = [
  BoxShadow(
    color: blurColor,
    blurRadius: 10,
    offset: Offset(1, 1),
  )
];
const List<BoxShadow> boxShadowEditing = [
  BoxShadow(
    color: blurColor,
    blurRadius: 4,
    offset: Offset(1, 10),
  )
];
const TextStyle textStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
