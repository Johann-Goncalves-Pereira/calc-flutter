import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import '../components/diplay.dart';
import '../components/keyboard.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.velue),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
