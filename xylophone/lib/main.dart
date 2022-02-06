import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();

    void playSound(int i) {
      player.play('note$i.wav');
    }

    Widget getButton(int i) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: TextButton(
              child: const Text(''),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueGrey[900 - 100 * i]),
              ),
              onPressed: () => playSound(i)),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getButton(1),
              getButton(2),
              getButton(3),
              getButton(4),
              getButton(5),
              getButton(6),
              getButton(7)
            ],
          ),
        ),
      ),
    );
  }
}
