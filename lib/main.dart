import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.redAccent, soundNumber: 2),
              buildKey(color: Colors.blueAccent, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.deepPurple, soundNumber: 5),
              buildKey(color: Colors.deepOrange, soundNumber: 6),
              buildKey(color: Colors.lime, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
