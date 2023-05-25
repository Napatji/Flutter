//Package
import 'package:flutter/material.dart';

//Components
import 'package:test1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 1, 133, 133),
          Color.fromARGB(255, 52, 186, 186),
        ),
      ),
    ),
  );
}
