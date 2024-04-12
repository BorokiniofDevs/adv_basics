import 'package:adv_basics/answers_button.dart';
import 'package:adv_basics/data/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var displayedQuestionIndex = 0;

  void answeredQuestion() {
    setState(() {
      displayedQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayedQuestion = questions[displayedQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              displayedQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...displayedQuestion.getShuffledAnswers().map((answer) =>
                AnswerButton(onTap: answeredQuestion, answerText: answer))
            // AnswerButton(
            //   answerText: 'Answer 1',
            //   onTap:,
            // )
          ],
        ),
      ),
    );
  }
}
