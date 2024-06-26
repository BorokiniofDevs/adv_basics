import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The result'),
            const SizedBox(
              height: 30,
            ),
            const Text('Dummy Text'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text("Restart Texxt"))
          ],
        ),
      ),
    );
  }
}
