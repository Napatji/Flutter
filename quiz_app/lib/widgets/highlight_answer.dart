//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighligthAnswer extends StatelessWidget {
  const HighligthAnswer(
      {super.key, required this.number, required this.isCorrect});
  final int number;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: isCorrect
            ? const Color.fromARGB(255, 0, 191, 175)
            : const Color.fromARGB(255, 216, 0, 140),
      ),
      child: Text(
        '$number',
        style: GoogleFonts.lato(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
