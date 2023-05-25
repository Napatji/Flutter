//Package
import 'package:flutter/material.dart';

//Components
import 'package:test1/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.bColor, this.eColor, {super.key});

  final Color bColor;
  final Color eColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            bColor,
            eColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText(this.someText, {super.key});

  final String someText;

  @override
  Widget build(BuildContext context) {
    return Text(
      someText,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
