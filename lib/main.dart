import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String note}) {
    return Expanded(
      child: TextButton(
          child: Text(note),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1, note: 'C'),
              buildKey(color: Colors.orange, soundNumber: 2, note: 'D'),
              buildKey(color: Colors.yellow, soundNumber: 3, note: 'E'),
              buildKey(color: Colors.green, soundNumber: 4, note: 'F'),
              buildKey(color: Colors.brown, soundNumber: 5, note: 'G'),
              buildKey(color: Colors.blue, soundNumber: 6, note: 'A'),
              buildKey(color: Colors.blue.shade900, soundNumber: 7, note: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
