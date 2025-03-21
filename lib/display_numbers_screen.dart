import 'package:flutter/material.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';

class DisplayNumbersScreen extends StatelessWidget {
  final String input;
  final String output;
  const DisplayNumbersScreen(
      {super.key, required this.input, required this.output});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      alignment: Alignment.bottomRight,
      color: CalculatorColors.primaryBlack,
      child: Column(
        children: [
          Text(
            input,
            style:
                TextStyle(fontSize: 30, color: CalculatorColors.primaryWhite),
          ),
          Text(
            output,
            style:
                TextStyle(fontSize: 30, color: CalculatorColors.primaryWhite),
          ),
        ],
      ),
    );
  }
}
