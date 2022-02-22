import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XyloApp());
}

class XyloApp extends StatelessWidget {
  XyloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache p = AudioCache();

    Widget noteXylo(Color couleur, String nomfichier) {
      return Expanded(
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(couleur)),
          onPressed: () {
            p.play(nomfichier);
          },
          child: Container(
            color: couleur,
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              noteXylo(Colors.red, 'note1.wav'),
              noteXylo(Colors.orange, 'note2.wav'),
              noteXylo(Colors.yellow, 'note3.wav'),
              noteXylo(Colors.green, 'note4.wav'),
              noteXylo(Colors.teal, 'note5.wav'),
              noteXylo(Colors.blue, 'note6.wav'),
              noteXylo(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
