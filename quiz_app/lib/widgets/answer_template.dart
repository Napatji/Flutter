//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number',
          style: GoogleFonts.lato(fontSize: 20),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: GoogleFonts.lato(fontSize: 20),
              ),
              Text(
                answer,
                style: GoogleFonts.lato(fontSize: 20),
              ),
              Text(
                correct,
                style: GoogleFonts.lato(fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
