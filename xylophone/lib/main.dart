import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(color: Colors.red, soundNumber: 1),
            buildkey(color: Colors.blue, soundNumber: 2),
            buildkey(color: Colors.green, soundNumber: 3),
            buildkey(color: Colors.teal, soundNumber: 4),
            buildkey(color: Colors.black, soundNumber: 5),
            buildkey(color: Colors.blueGrey, soundNumber: 6),
            buildkey(color: Colors.yellow, soundNumber: 7),
          ],
        ),
      ),
    ));
  }
}
