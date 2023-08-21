import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: const MagicApp(),
      ),
    );
  }
}

class MagicApp extends StatefulWidget {
  const MagicApp({super.key});

  @override
  State<MagicApp> createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  // ignore: non_constant_identifier_names
  int BallNumber = 1;

  void _handleClick() {
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: _handleClick,
        child: Image.asset(
          'images/ball$BallNumber.png',
        ),
      ),
    );
  }
}
