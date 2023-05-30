//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Components
import 'package:quiz_app/data/quiz_example.dart';
import 'package:quiz_app/widgets/restart_btn.dart';
import 'package:quiz_app/widgets/answer_template.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(this.result, this.restart, {super.key});
  final List<String> result;
  final void Function() restart;

  @override
  State<StatefulWidget> createState() {
    return _ResultScreen();
  }
}

class _ResultScreen extends State<ResultScreen> {
  var correctAnswer = 0;
  var allAnswer = quizExample.length;

  @override
  void initState() {
    correctAnswer = 0;
    checkAnswer();
    super.initState();
  }

  void checkAnswer() {
    for (var i = 0; i < quizExample.length; i++) {
      if (widget.result[i] == quizExample[i].answer[0]) {
        setState(() {
          correctAnswer++;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answer $correctAnswer out of $allAnswer questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'List of answers questions...',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: quizExample.map((question) {
                    return AnswerTemplate(
                        number: quizExample.indexOf(question) + 1,
                        question: question.text,
                        answer: widget.result[quizExample.indexOf(question)],
                        correct: question.answer[0]);
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RestartButton('Restart Quiz', () {
              widget.restart();
            })
          ],
        ),
      )),
    );
  }
}
