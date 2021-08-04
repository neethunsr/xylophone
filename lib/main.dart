import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded createKey(Color color, int note) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(note);
        },
      ),
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
              createKey(Colors.purple[50], 1),
              createKey(Colors.purple[100], 2),
              createKey(Colors.purple[200], 3),
              createKey(Colors.purple[300], 4),
              createKey(Colors.purple[400], 5),
              createKey(Colors.purple, 6),
              createKey(Colors.purple[600], 7),
            ],
          ),
        ),
      ),
    );
  }
}
