import 'package:flutter/material.dart';

class Common {
  static space(double num, {double w = 0}) {
    return SizedBox(
      height: num,
      width: w,
    );
  }

  static textCategoryBase(String text) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
