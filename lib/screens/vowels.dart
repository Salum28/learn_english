import 'package:flutter/material.dart';

class Vowels extends StatelessWidget {
  const Vowels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Vogais',
            style: TextStyle(
              fontSize: 24,
              color: Colors.brown
            ),
          )
        ],
      ),
    );
  }
}
