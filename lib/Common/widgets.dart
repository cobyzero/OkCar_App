import 'package:flutter/material.dart';

class Common {
  static space(double num) {
    return SizedBox(
      height: num,
    );
  }

  static textCategoryBase(String text) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
