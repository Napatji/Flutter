//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Components
import 'package:quiz_app/widgets/highlight_answer.dart';

class AnswerTemplate extends StatelessWidget {
  const AnswerTemplate(
      {super.key,
      required this.number,
      required this.question,
      required this.answer,
      required this.correct});
  final int number;
  final String question;
  final String answer;
  final String correct;

  @override
  Widget build(BuildContext context) {
    final bool isCorrect;
    if (answer == correct) {
      isCorrect = true;
    } else {
      isCorrect = false;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HighligthAnswer(number: number, isCorrect: isCorrect),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                answer,
                style: GoogleFonts.lato(
                    fontSize: 18,
                    color: const Color.fromARGB(212, 222, 222, 222)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                correct,
                style: GoogleFonts.lato(
                    fontSize: 18,
                    color: const Color.fromARGB(239, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
