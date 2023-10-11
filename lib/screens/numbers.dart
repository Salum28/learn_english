import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numbers extends StatefulWidget {
  const Numbers({super.key});

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
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
      '1.mp3', '2.mp3', '3.mp3',
      '4.mp3', '5.mp3', '6.mp3'
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.75,
      children: [
        GestureDetector(
          onTap: () => _playByFile('1'),
          child: Image.asset('assets/images/1.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('2'),
          child: Image.asset('assets/images/2.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('3'),
          child: Image.asset('assets/images/3.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('4'),
          child: Image.asset('assets/images/4.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('5'),
          child: Image.asset('assets/images/5.png'),
        ),
        GestureDetector(
          onTap: () => _playByFile('6'),
          child: Image.asset('assets/images/6.png'),
        )
      ],
    );;
  }
}
