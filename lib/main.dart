import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildNote({int soundNumber, Color col}) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.black,
        home: Scaffold(
            body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildNote(soundNumber: 1, col: Colors.red),
            buildNote(soundNumber: 2, col: Colors.orange),
            buildNote(soundNumber: 3, col: Colors.yellow),
            buildNote(soundNumber: 4, col: Colors.green),
            buildNote(soundNumber: 5, col: Colors.teal),
            buildNote(soundNumber: 6, col: Colors.blue),
            buildNote(soundNumber: 7, col: Colors.purple),
          ]),
        )));
  }
}
