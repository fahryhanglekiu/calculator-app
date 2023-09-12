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
    
    String myText = 'Personal Text';

    return Column(
      children: [
        Text(myText),
        CalculatorNumbers('1', '2', '3', myText),
        const SizedBox(
          height: 20,
        ),
        CalculatorNumbers('4', '5', '6', myText),
        const SizedBox(
          height: 20,
        ),
        CalculatorNumbers('7', '8', '9', myText),
      ],
    );
  }
}

class CalculatorNumbers extends StatelessWidget {
  const CalculatorNumbers(this.firstNum, this.secondNum, this.thirdNum, this.displayText, {super.key});

  final String firstNum;
  final String secondNum;
  final String thirdNum;
  final String displayText;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NumberStyledButton(displayText, firstNum),
        NumberStyledButton(displayText, secondNum),
        NumberStyledButton(displayText, thirdNum),
      ],
    );
  }
}

class NumberStyledButton extends StatefulWidget {
  NumberStyledButton(this.middleColumnText, this.text, {super.key});

  final String text;
  String middleColumnText;

  @override
  State<NumberStyledButton> createState() => _NumberStyledButtonState();
}

class _NumberStyledButtonState extends State<NumberStyledButton> {
  @override
  Widget build(context) {

    void setText(){
      setState(() {
        widget.middleColumnText += widget.text;
      });
    }

    return ElevatedButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromWidth(40)),
        shape: MaterialStatePropertyAll(
          CircleBorder(),
        ),
      ),
      onPressed: setText,
      child: Text(widget.text),
    );
  }
}

