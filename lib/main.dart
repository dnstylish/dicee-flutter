import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
        ),
        backgroundColor: Colors.blue,
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  late int leftNumber = 1;
  late int rightNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    randomDice();
                  },
                  child: Image.asset('images/dice$leftNumber.png')
              )
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    randomDice();
                  },
                  child: Image.asset('images/dice$rightNumber.png')
              )
          )
        ],
      ),
    );
  }

  void randomDice() {
    setState(() {
      this.leftNumber = Random().nextInt(5) + 1;
      this.rightNumber = Random().nextInt(5) + 1;
    });
  }
}



