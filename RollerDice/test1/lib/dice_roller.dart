//Package
import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var activeDice = 'assets/dices/dice-1.png';

  void rollDice() {
    int rand = (Random().nextInt(6) + 1);
    setState(() {
      activeDice = 'assets/dices/dice-$rand.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: const Text('Roll'),
        ),
      ],
    );
  }
}
