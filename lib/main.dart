import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _leftDiceNumber = 1;
  var _rightDiceNumber = 6;
  void _setDice() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: _setDice,
                  child: Image.asset('images/dice$_leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: _setDice,
                  child: Image.asset('images/dice$_rightDiceNumber.png'),
                ),
              ),
            ], // Children 1
          ),
        ),
      ),
    );
  }
}
