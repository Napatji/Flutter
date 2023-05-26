//Package
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            height: 350,
            'assets/images/quiz-logo.png',
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              elevation: 8,
              backgroundColor: const Color.fromARGB(255, 132, 0, 172),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
