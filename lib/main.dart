import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 16, 67, 18),
            Color.fromARGB(255, 50, 108, 52)
          ], begin: Alignment.topLeft, end: Alignment.topRight),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
