import 'package:flutter/material.dart';
import '../components/diplay.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display("sdsadfkljaçlskdjfçlkjkfjaçs"),
          Text("Keybourd"),
        ],
      ),
    );
  }
}
