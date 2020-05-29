import 'package:calculadora/components/keyboard.dart';
import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memory memory = Memory();

  _onPressed(String command) {
    //print(text);
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          //Text('Display'),
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
