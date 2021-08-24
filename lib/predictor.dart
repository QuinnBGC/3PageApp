import 'package:flutter/material.dart';
import 'dart:math';

class Predicator extends StatefulWidget {

  @override
  _Predicator createState() => _Predicator();
}

class _Predicator extends State<Predicator> {
  int counter = 0;
  Random random = new Random();
  int randomNumber = 0;

  void _incrementCounter() {
    setState(() {
      random = new Random();
      randomNumber = random.nextInt(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> text = [
      'Yes.',
      'No.',
      'Unlikely.',
      'Maybe.',
      'Good Luck.',
      'Always.',
      'Obviously!',
      'You Know.'
    ];

    return Scaffold(

      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              ),
              Center(
                child: Text(
                  'Call me Maybe?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: InkWell(
                      onTap: _incrementCounter,
                      child: Text(
                        'Tap for the answer to your Question.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  text[randomNumber],
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}