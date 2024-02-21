import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_flutter/constants/colors.dart';
import 'package:test_task_flutter/constants/styles.dart';

/// Home page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = mainColor;
  static const String greetingText = 'Hello there';
  final int colorValue = 256;
  final Text _greetingPhrase = const Text(
    greetingText,
    style: mainStyle,
  );

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    final Random random = Random();

    return Color.fromRGBO(
      random.nextInt(colorValue),
      random.nextInt(colorValue),
      random.nextInt(colorValue),
      1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: Center(
          child: _greetingPhrase,
        ),
      ),
    );
  }
}
