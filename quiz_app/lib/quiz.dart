//Package
import 'package:flutter/material.dart';

//Components
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(onScreen);
    super.initState();
  }

  void onScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return (activeScreen);
  }
}
