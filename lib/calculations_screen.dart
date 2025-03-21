import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_calculator/btn.dart';
import 'package:modern_calculator/btn_model.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';
import 'package:modern_calculator/display_numbers_screen.dart';
import 'package:modern_calculator/light_controller.dart';

class CalculationsScreen extends StatelessWidget {
  const CalculationsScreen({super.key});

  @override
  dynamic numberPress= BlocProvider.of(context).
  Widget build(BuildContext context) {
    List<BtnModel> btns = [
      BtnModel(
          symbol: 'AC',
          symbolColor: CalculatorColors.textSky,
          onPressed: (value) {}),
      BtnModel(
          symbol: '±',
          symbolColor: CalculatorColors.textSky,
          onPressed: (f) {}),
      BtnModel(
          symbol: '%',
          symbolColor: CalculatorColors.textSky,
          onPressed: (f) {}),
      BtnModel(
          symbol: '÷',
          symbolColor: CalculatorColors.textPink,
          onPressed: (f) {}),
      BtnModel(
        symbol: '7',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '8',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '9',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
          symbol: '×',
          symbolColor: CalculatorColors.textPink,
          onPressed: (fd) {}),
      BtnModel(
        symbol: '4',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '5',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '6',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
          symbol: '-',
          symbolColor: CalculatorColors.textPink,
          onPressed: (fsda) {}),
      BtnModel(
        symbol: '1',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '2',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '3',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '+',
        symbolColor: CalculatorColors.textPink,
        onPressed: (fsad) {},
      ),
      BtnModel(
        symbol: 'MC',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: (dsfa) {},
      ),
      BtnModel(
        symbol: '0',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '.',
        symbolColor: CalculatorColors.primaryWhite,
        onPressed: onNumberPressed,
      ),
      BtnModel(
        symbol: '=',
        symbolColor: CalculatorColors.textPink,
        onPressed: (fsd) {},
      ),
    ];
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LightController(),
            Expanded(
                flex: 1,
                child: DisplayNumbersScreen(input: input, output: output)),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: CalculatorColors.containerBlack,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: btns.length,
                      itemBuilder: (context, index) {
                        return Btn(
                          childColor: btns[index].symbolColor,
                          onTap: btns[index].onPressed,
                          childText: btns[index].symbol,
                        );
                      }),
                ),
              ),
            ),
            Container(
              width: width * 0.35,
              height: 5,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: CalculatorColors.iconGrey,
                borderRadius: BorderRadius.circular(10),
              ),
            )
            // Divider(
            //   color: CalculatorColors.iconGrey,
            //   indent: width * 0.30,
            //   endIndent: width * 0.30,
            //   thickness: 5,
            // ),
          ],
        ),
      ),
    );
  }
}
