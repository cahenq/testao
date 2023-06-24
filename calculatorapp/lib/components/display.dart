import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color.fromARGB(255, 8, 8, 8),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AutoSizeText(
            text,
            minFontSize: 20,
            maxFontSize: 80,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}