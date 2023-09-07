import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.min,
            children: [
              TopColumn(),
              MiddleColumn(),
              BottomColumn(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopColumn extends StatelessWidget {
  const TopColumn({super.key});

  @override
  Widget build(context) {
    return const Text('Hi, I am a first column');
  }
}

class MiddleColumn extends StatelessWidget {
  const MiddleColumn({super.key});

  @override
  Widget build(context) {
    return const Text('Hi, I am a second column');
  }
}

class BottomColumn extends StatelessWidget {
  const BottomColumn({super.key});

  @override
  Widget build(context) {
    return const Column(
      children: [
        CalculatorNumbers('1', '2', '3'),
        SizedBox(
          height: 20,
        ),
        CalculatorNumbers('4', '5', '6'),
        SizedBox(
          height: 20,
        ),
        CalculatorNumbers('7', '8', '9'),
      ],
    );
  }
}

class CalculatorNumbers extends StatelessWidget {
  const CalculatorNumbers(this.firstNum, this.secondNum, this.thirdNum,
      {super.key});

  final String firstNum;
  final String secondNum;
  final String thirdNum;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NumberStyledButton(firstNum),
        NumberStyledButton(secondNum),
        NumberStyledButton(thirdNum),
      ],
    );
  }
}

class NumberStyledButton extends StatelessWidget {
  const NumberStyledButton(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromWidth(40)),
        shape: MaterialStatePropertyAll(
          CircleBorder(),
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
