//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Components
import 'package:quiz_app/data/quiz_example.dart';
import 'package:quiz_app/widgets/answer_btn.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAnswer, {super.key});
  final void Function(String) chooseAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  bool isDone = false;
  int _count = 0;

  @override
  void initState() {
    _count = 0;
    super.initState();
  }

  void nextQuestion(String answer) {
    setState(() {
      _count++;
      widget.chooseAnswer(answer);
      if (_count + 1 == quizExample.length) {
        isDone = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuiz = quizExample[_count];

    return (Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuiz.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuiz.getShuffleAnswer().map((answer) {
              return AnswerButton(
                text: answer,
                onClick: () {
                  nextQuestion(answer);
                },
              );
            }),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}
