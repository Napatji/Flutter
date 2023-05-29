//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Components
import 'package:quiz_app/data/quiz_example.dart';
import 'package:quiz_app/widgets/answer_btn.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  bool isDone = false;
  int _count = 0;

  void nextQuestion() {
    setState(() {
      if (_count == quizExample.length - 2) {
        _count += 1;
        isDone = true;
      } else if (_count < quizExample.length - 1) {
        _count += 1;
      }
    });
  }

  void selectedAnswer() {}

  @override
  Widget build(BuildContext context) {
    var currentQuiz = quizExample[_count];
    Widget btn;

    if (!isDone) {
      btn = const SizedBox(
        height: 50,
      );
    } else {
      btn = ElevatedButton.icon(
          icon: const Icon(Icons.done),
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00BFB0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))),
          onPressed: () {},
          label: const Text('Submit'));
    }

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
                onClick: nextQuestion,
              );
            }),
            const SizedBox(
              height: 30,
            ),
            btn,
          ],
        ),
      ),
    ));
  }
}
