import 'package:flutter/material.dart';
import 'package:test_task_flutter/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

/// Entry point
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
