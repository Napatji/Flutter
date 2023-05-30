//Package
import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_example.dart';

//Components
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswer = [];
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == quizExample.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswer, switchScreen);
        selectedAnswer = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return (activeScreen);
  }
}
