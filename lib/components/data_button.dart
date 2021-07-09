import 'package:flutter/material.dart';

class DataButton extends StatelessWidget {
  final String textTitle;
  final Function onPressed;
  final Color backgroundColor;

  DataButton(
      {required this.textTitle,
      required this.onPressed,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          textTitle,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
