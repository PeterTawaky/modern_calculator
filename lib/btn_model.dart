import 'package:flutter/material.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';

class BtnModel {
  final String symbol;
  final Color symbolColor;
  final Function(String) onPressed;

  BtnModel(
      {required this.symbol,
      required this.symbolColor,
      required this.onPressed});
}

