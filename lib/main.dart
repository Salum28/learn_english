import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_english/home.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff795548),
          surface: const Color(0xff795548),
          onSurface: const Color(0xffffffff)
        ),
        scaffoldBackgroundColor: const Color(0xfff5e9b9),
      ),
      home: const Home()
    )
  );
}
