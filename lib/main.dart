import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff448aff),
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything!'),
          ),
          backgroundColor: Color(0xff3f51b5),
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  //variable for 8ball
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: FlatButton(
            child: Image.asset('images/ball$num.png'),
            onPressed: () {
              shakeTheBall();
            },
          ),
        )
      ],
    ));
  }

/*           FUNCTIONS             */
  //shake the ball
  void shakeTheBall() {
    setState(() {
      num = randomNumber(1, 5);
    });
  }

  //Random Number Generator
  int randomNumber(int min, int max) {
    Random rand = new Random();
    int result = min + rand.nextInt((max + 1) - min);
    print(result);
    return result;
  }
}
