import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = const StartScreen();

  // MTD1
  // Widget? activeScreen;
  // // @override
  // // void initState() {
  // //   activeScreen = StartScreen(switchScreen);
  // //   super.initState();
  // // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      // MTD1
      // activeScreen = const QuestionScreen();

      // MTD2
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 5, 197, 255),
              Color.fromARGB(255, 11, 66, 150)
            ], begin: Alignment.topLeft, end: Alignment.topRight),
          ),
          // child: const StartScreen(),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
