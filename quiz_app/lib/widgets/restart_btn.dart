//Package
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestartButton extends StatelessWidget {
  const RestartButton(this.text, this.onClick, {super.key});
  final String text;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.restart_alt),
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00BFB0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
      ),
      label: Text(
        text,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
