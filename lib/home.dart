import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_english/screens/animals.dart';
import 'package:learn_english/screens/numbers.dart';
import 'package:learn_english/screens/vowels.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // Atributes
  late TabController _controller;

  // Methods
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff5D4037)
        ),
        title: const Text(
          'Aprenda Inglês',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        bottom: TabBar(
          unselectedLabelColor: Colors.white38,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          controller: _controller,
          tabs: const [
            Tab(
              text: 'Bichos',
            ),
            Tab(
              text: 'Números',
            ),
            Tab(
              text: 'Vogais',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Animals(),
          Numbers(),
          Vowels()
        ]
      ),
    );
  }
}
