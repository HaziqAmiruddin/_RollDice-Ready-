import 'package:flutter/material.dart';
import 'dart:math';

final randomizor = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assests/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      //activeDiceImage = 'assests/images/dice-$diceRoll.png';
      // currentDiceRoll = Random().nextInt(6) + 1;
      currentDiceRoll = randomizor.nextInt(6) + 1;
    });
    //print('Change Image Boy');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          //activeDiceImage,
          'assests/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            backgroundColor: const Color.fromARGB(255, 202, 140, 221),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
