import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_calculator/calculations_screen.dart';
import 'package:modern_calculator/colors/calculator_colors.dart';
import 'package:modern_calculator/cubit/my_cubit.dart';

void main() {
  runApp(ModernCalculator());
}

class ModernCalculator extends StatelessWidget {
  const ModernCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<MyCubit>(
        create: (context) => MyCubit(),
        child: CalculationsScreen(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: CalculatorColors.primaryBlack,
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(CalculatorApp());
// }

// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CalculatorScreen(),
//     );
//   }
// }

// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   String input = "";
//   String output = "";
//   double num1 = 0;
//   double num2 = 0;
//   String operator = "";

//   void buttonPressed(String value) {
//     setState(() {
//       if (value == "C") {
//         input = "";
//         output = "";
//         num1 = 0;
//         num2 = 0;
//         operator = "";
//       } else if (value == "=") {
//         num2 = double.parse(input);
//         switch (operator) {
//           case "+":
//             output = (num1 + num2).toString();
//             break;
//           case "-":
//             output = (num1 - num2).toString();
//             break;
//           case "x":
//             output = (num1 * num2).toString();
//             break;
//           case "/":
//             output = num2 != 0 ? (num1 / num2).toString() : "Error";
//             break;
//         }
//         input = output;
//         operator = "";
//       } else if (["+", "-", "x", "/"].contains(value)) {   //if it has any symbol of this
//         num1 = double.parse(input);
//         operator = value;
//         input = "";
//       } else {
//         input += value;
//       }
//     });
//   }

//   Widget buildButton(String text, {Color? color}) {
//     return Expanded(
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.all(20),
//           backgroundColor: color ?? Colors.grey[200],
//         ),
//         onPressed: () => buttonPressed(text),
//         child: Text(text, style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Calculator")),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               alignment: Alignment.bottomRight,
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 input,
//                 style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Row(children: [buildButton("7"), buildButton("8"), buildButton("9"), buildButton("/")]),
//           Row(children: [buildButton("4"), buildButton("5"), buildButton("6"), buildButton("x")]),
//           Row(children: [buildButton("1"), buildButton("2"), buildButton("3"), buildButton("-")]),
//           Row(children: [buildButton("C", color: Colors.red), buildButton("0"), buildButton("=", color: Colors.green), buildButton("+")]),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() => runApp(CalculatorApp());

// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: CalculatorScreen(),
//     );
//   }
// }

// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   String equation = "0";
//   String result = "0";
//   bool shouldAppend = false;

//   void onNumberPressed(String num) {
//     setState(() {
//       if (shouldAppend) {
//         equation += num;
//       } else {
//         equation = num;
//         shouldAppend = true;
//       }
//       result = '';
//     });
//   }

//   void onOperatorPressed(String op) {
//     setState(() {
//       if (shouldAppend) {
//         equation += op;
//         shouldAppend = true;
//       } else if (equation.isNotEmpty) {
//         equation = result + op;
//         shouldAppend = true;
//       }
//       result = '';
//     });
//   }

//   void calculate() {
//     try {
//       Parser p = Parser();
//       Expression exp = p.parse(equation);
//       ContextModel cm = ContextModel();
//       double evalResult = exp.evaluate(EvaluationType.REAL, cm);

//       setState(() {
//         result = evalResult.toString();
//         equation = result;
//         shouldAppend = false;
//       });
//     } catch (e) {
//       setState(() {
//         result = 'Error';
//       });
//     }
//   }

//   void clear() {
//     setState(() {
//       equation = "0";
//       result = "0";
//       shouldAppend = false;
//     });
//   }

//   Widget buildButton(String label, {Color? color}) {
//     return Padding(
//       padding: EdgeInsets.all(4.0),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color ?? Colors.blue[50],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           padding: EdgeInsets.all(16.0),
//         ),
//         onPressed: () {
//           if (label == '=') {
//             calculate();
//           } else if (['+', '-', '×', '÷'].contains(label)) {
//             onOperatorPressed(label);
//           } else if (label == 'C') {
//             clear();
//           } else {
//             onNumberPressed(label);
//           }
//         },
//         child: Text(
//           label,
//           style: TextStyle(fontSize: 24, color: Colors.black),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Calculator')),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               alignment: Alignment.bottomRight,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Text(
//                       equation,
//                       style: TextStyle(fontSize: 32, color: Colors.grey),
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     result,
//                     style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               )),
//           ),
//           Divider(height: 1),
//           Expanded(
//             flex: 2,
//             child: GridView.count(
//               crossAxisCount: 4,
//               children: [
//                 buildButton('C', color: Colors.red[100]),
//                 buildButton('÷', color: Colors.blue[100]),
//                 buildButton('×', color: Colors.blue[100]),
//                 buildButton('⌫', color: Colors.blue[100]),
//                 buildButton('7'),
//                 buildButton('8'),
//                 buildButton('9'),
//                 buildButton('-', color: Colors.blue[100]),
//                 buildButton('4'),
//                 buildButton('5'),
//                 buildButton('6'),
//                 buildButton('+', color: Colors.blue[100]),
//                 buildButton('1'),
//                 buildButton('2'),
//                 buildButton('3'),
//                 buildButton('=', color: Colors.green[100]),
//                 buildButton('.'),
//                 buildButton('0'),
//                 buildButton('00'),
//                 buildButton('=', color: Colors.green[100]),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }