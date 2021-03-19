import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDicenUmber = 2;

  @override
  void initState() {
    change();
  }

  void change() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDicenUmber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                change();
              },
              onLongPress: () {
                setState(() {
                  leftDiceNumber = 1;
                  rightDicenUmber = 1;
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDicenUmber.png"),
              onPressed: () {
                change();
              },
              onLongPress: () {
                setState(() {
                  leftDiceNumber = 1;
                  rightDicenUmber = 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
