import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AudioPlayerScreen(),
    );
  }
}

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});
  @override
  AudioPlayerScreenState createState() => AudioPlayerScreenState();
}

class AudioPlayerScreenState extends State<AudioPlayerScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final AudioCache _audioCache = AudioCache(prefix: 'assets/audios/');

  @override
  void initState() {
    super.initState();
  }

  void _playAudio(String tone) async {
    await _audioPlayer.stop();
    final player = await _audioCache.loadAsFile(tone);
    await _audioPlayer.play(DeviceFileSource(player.path));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Audio Player App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note1.wav');
              },
              child: Container(
                color: Colors.pink,
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note2.wav');
              },
              child: Container(
                color: Colors.deepOrange,
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note3.wav');
              },
              child: Container(
                color: Colors.orange[700],
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note4.wav');
              },
              child: Container(
                color: Colors.teal,
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note5.wav');
              },
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
                onPressed: () {
                  _playAudio('note6.wav');
                },
                child: Container(
                  color: Colors.lime,
                )),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                _playAudio('note7.wav');
              },
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
