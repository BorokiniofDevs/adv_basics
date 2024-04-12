import 'package:adv_basics/answers_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is the question screen',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Answer 1',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
