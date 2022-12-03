import 'package:flutter/material.dart';

const Color kBackground = Color(0xFFF5F5F5);
const Color kPrimaryColor = Color.fromARGB(255, 237, 68, 228);
hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor,radix: 16));
}