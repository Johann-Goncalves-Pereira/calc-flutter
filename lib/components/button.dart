import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool expanded;
  final Color color;
  final void Function(String) callback;

  Button({
    required this.text,
    this.expanded = false,
    this.color = DEFAULT,
    required this.callback,
  });

  Button.expanded({
    required this.text,
    this.expanded = true,
    this.color = DEFAULT,
    required this.callback,
  });

  Button.operation({
    required this.text,
    this.expanded = false,
    this.color = OPERATION,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expanded ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callback(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color.fromRGBO(48, 48, 48, 1)),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
