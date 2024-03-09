import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }

  TextButton build_ui(Color color, int soundnum) {
    return TextButton(
      onPressed: () {
        playsound(soundnum);
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(45),
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Xylophone",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            build_ui(Colors.red, 1),
            build_ui(Colors.orange, 2),
            build_ui(Colors.yellow, 3),
            build_ui(Colors.green, 4),
            build_ui(Colors.blue, 5),
            build_ui(Colors.purple, 6),
            build_ui(Colors.pink, 7),
          ],
        ),
      ),
    );
  }
}
