
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Center(child: Text('Wait For 6 6 6 6 6 6')),
          backgroundColor: Colors.red,
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
  int firstDiceNumber = 1;
  int secDiceNumber = 1;
  int thirdDiceNumber = 1;
  int fourthDiceNumber = 1;
  int fifthDiceNumber = 1;
  int sisthDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secDiceNumber = Random().nextInt(6) + 1;
      thirdDiceNumber = Random().nextInt(6) + 1;
      fourthDiceNumber = Random().nextInt(6) + 1;
      fifthDiceNumber = Random().nextInt(6) + 1;
      sisthDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$firstDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                  //Get students to create the second die as a challenge
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$secDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$thirdDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                  //Get students to create the second die as a challenge
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$fourthDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$fifthDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                  //Get students to create the second die as a challenge
                  Expanded(
                    child: FlatButton(
                      child: Image.asset(
                        'pics/d$sisthDiceNumber.png',
                      ),
                      onPressed: () {
                        changeDiceFace();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}