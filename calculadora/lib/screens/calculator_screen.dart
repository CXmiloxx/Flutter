import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String mainResult = '0';
  String operand1 = '';
  String operand2 = '';
  String operator = '';

  void onButtonPressed(String text) {
    setState(() {
      if (text == 'AC') {
        mainResult = '0';
        operand1 = '';
        operand2 = '';
        operator = '';
      } else if (text == '+' || text == '-' || text == 'X' || text == '/') {
        operator = text;
        mainResult = '0';
      } else if (text == '=') {
        if (operand1.isNotEmpty && operator.isNotEmpty && operand2.isNotEmpty) {
          final num1 = double.parse(operand1);
          final num2 = double.parse(operand2);
          switch (operator) {
            case '+':
              mainResult = (num1 + num2).toString();
              break;
            case '-':
              mainResult = (num1 - num2).toString();
              break;
            case 'X':
              mainResult = (num1 * num2).toString();
              break;
            case '/':
              mainResult = (num1 / num2).toString();
              break;
          }
          operand1 = mainResult;
          operand2 = '';
          operator = '';
        }
      } else {
        if (operator.isEmpty) {
          operand1 += text;
          mainResult = operand1;
        } else {
          operand2 += text;
          mainResult = operand2;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(child: Container()),

              SubResult(text: operand1),
              SubResult(text: operator),
              SubResult(text: operand2),
              const LineSeparator(),
              MainResultText(text: mainResult),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: 'AC',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => onButtonPressed('AC'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+/-',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => onButtonPressed('+/-'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'del',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => onButtonPressed('del'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '/',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => onButtonPressed('/'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '7',
                      onPressed: () => onButtonPressed('7'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '8',
                      onPressed: () => onButtonPressed('8'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '9',
                      onPressed: () => onButtonPressed('9'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'X',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => onButtonPressed('X'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '4',
                      onPressed: () => onButtonPressed('4'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '5',
                      onPressed: () => onButtonPressed('5'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '6',
                      onPressed: () => onButtonPressed('6'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '-',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => onButtonPressed('-'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: '1',
                      onPressed: () => onButtonPressed('1'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '2',
                      onPressed: () => onButtonPressed('2'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '3',
                      onPressed: () => onButtonPressed('3'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => onButtonPressed('+'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: CalculatorButton(
                      text: '0',
                      big: true,
                      onPressed: () => onButtonPressed('0'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '.',
                      onPressed: () => onButtonPressed('.'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '=',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => onButtonPressed('='),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
