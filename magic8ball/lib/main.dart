import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallApp());

class BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: const Center(child: Text('Ask Me Anything!')),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: changeImage,
        ),
      ),
    );
  }
}
