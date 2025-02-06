import 'package:flutter/material.dart';

class UserController {
  final int number1 = 10;
  final int number2 = 20;

  int get sum => number1 + number2; // Getter to calculate sum

  void navigateToPage(BuildContext context, String routeName) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: sum, // Pass sum as an argument
    );
  }
}
