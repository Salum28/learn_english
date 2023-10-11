import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Animals extends StatefulWidget {
  const Animals({super.key});

  @override
  State<Animals> createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  // Variables
  final AudioPlayer _audioPlayer = AudioPlayer();
  final AudioCache _audioCache = AudioCache(prefix: 'audios/');

  // Methods
  _playByFile(String fileName) async {
    String path = 'audios/$fileName.mp3';
    await _audioPlayer.play(AssetSource(path));
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      'cao.mp3', 'gato.mp3', 'leao.mp3',
      'macaco.mp3', 'ovelha.mp3', 'vaca.mp3'
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.75,
      children: [
        GestureDetector(
          onTap: () => _playByFile('cao'),
          child: Image.asset('assets/images/cao.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('gato'),
          child: Image.asset('assets/images/gato.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('leao'),
          child: Image.asset('assets/images/leao.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('macaco'),
          child: Image.asset('assets/images/macaco.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('ovelha'),
          child: Image.asset('assets/images/ovelha.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('vaca'),
          child: Image.asset('assets/images/vaca.png'),
        )
      ],
    );
  }
}
