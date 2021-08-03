import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.purple),
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(Colors.purple),
                  // ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
