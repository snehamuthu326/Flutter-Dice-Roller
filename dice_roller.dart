import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget //changes value of data internally
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {  // '_' befor class name indicates access specifier private that accessed only within this file
  var diceRoll = 2;

  void rollDice() {
    setState(() {
        diceRoll = randomizer.nextInt(6) + 1; //nextInt(10) 0 to 9 //$ to use var
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(
            'assets/images/Dice-$diceRoll.jpeg',
            width: 200,
          ),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
            child: const Text('RollDice'), )
          ],
          );
  }
}

// custom widgets which uses two or more classes for functioning