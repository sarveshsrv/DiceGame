import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Center(
              child: Text(
            'DiCeTap',
            textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.green[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int centerDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      centerDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //  child: Row(
        // children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Tap any dice",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$centerDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
