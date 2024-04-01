import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(

                  // forecolor: Colors.white,
                  // backgroundColor: Colors.amber,
                  fontSize: 20),
              backgroundColor: const Color.fromARGB(255, 27, 59, 30),
            ),
            child: const Text('Click to Start'),
          ),
        ],
      ),
    );
  }
}
