import 'package:flutter/material.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';

class Btn extends StatelessWidget {
 final Function(String) onTap;
  final Color childColor;
  final String childText;
  const Btn({
    super.key,
    required this.childColor,
    required this.childText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap(childText),
      child: Container(
        margin: EdgeInsets.all(width * 0.01),
        alignment: Alignment.center,
        height: height * 0.2,
        width: height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CalculatorColors.buttonBlack,
        ),
        child: Text(
          childText,
          style: TextStyle(
            color: childColor,  
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
