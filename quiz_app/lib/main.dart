//Package
import 'package:flutter/material.dart';

//Components
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 132, 0, 172),
              Color.fromARGB(255, 157, 76, 182)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Quiz(),
      ),
    ),
  ));
}
