import 'package:flutter/material.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';

class LightController extends StatelessWidget {
  const LightController({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
        width: 128,
        height: 48,
        decoration: BoxDecoration(
          color: CalculatorColors.containerBlack,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.light_mode_outlined,
                color: CalculatorColors.iconGrey,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.nights_stay_outlined,
                color: CalculatorColors.buttonWhite,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
