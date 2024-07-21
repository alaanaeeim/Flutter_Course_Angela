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
  final _audioPlayer = AudioPlayer();
  final _audioCache = AudioCache(prefix: 'assets/audios/');

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

  Expanded buildPlaySection(String toneName, Color colorTone) {
    return Expanded(
      child: FloatingActionButton(
        onPressed: () {
          _playAudio(toneName);
        },
        child: Container(
          color: colorTone,
        ),
      ),
    );
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
          buildPlaySection(
            'note1.wav',
            Colors.pink,
          ),
          buildPlaySection(
            'note2.wav',
            Colors.deepOrange,
          ),
          buildPlaySection(
            'note3.wav',
            Colors.orange,
          ),
          buildPlaySection(
            'note4.wav',
            Colors.teal,
          ),
          buildPlaySection(
            'note5.wav',
            Colors.yellow,
          ),
          buildPlaySection(
            'note6.wav',
            Colors.lime,
          ),
          buildPlaySection(
            'note7.wav',
            Colors.green,
          ),
        ],
      ),
    );
  }
}
