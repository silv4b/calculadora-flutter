import 'package:calculadora/components/keyboard.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          //Text('Display'),
          Display('132.54'),
          Keyboard(),
        ],
      ),
    );
  }
}
