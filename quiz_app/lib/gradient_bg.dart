//Package
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 132, 0, 172),
            Color.fromARGB(255, 157, 76, 182)
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              height: 350,
              'assets/images/quiz-logo.png',
            ),
            const SizedBox(height: 50),
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
      ),
    ));
  }
}
