import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

int leftdiceNumber = Random().nextInt(6) + 1;
int rightdiceNumber = Random().nextInt(6) + 1;

class _DicePageState extends State<DicePage> {
  void changeState() {
    setState(() {
      rightdiceNumber = Random().nextInt(6) + 1;
      leftdiceNumber = Random().nextInt(6) + 1;
    });

    print("clicked $rightdiceNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$leftdiceNumber.png'),
                onTap: changeState,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$rightdiceNumber.png'),
                onTap: changeState,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
