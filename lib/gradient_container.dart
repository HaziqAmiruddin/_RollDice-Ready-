import 'package:flutter/material.dart';
import 'package:dice_rolling/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Image.asset(
        //       activeDiceImage,
        //       width: 200,
        //     ),
        //     const SizedBox(height: 20),
        //     TextButton(
        //       onPressed: rollDice,
        //       style: TextButton.styleFrom(
        //         // padding: const EdgeInsets.only(
        //         //   top: 20,
        //         // ),
        //         foregroundColor: Colors.white,
        //         textStyle: const TextStyle(
        //           fontSize: 28,
        //         ),
        //       ),
        //       child: const Text('Roll Dice'),
        //     ),
        //   ],
        // ),
        //move to stateful widget class
      ),

      //comment StyledText because want to study to display images
      //StyledText("Test")
      ////////////////////////
      //transfer to other file(styled_text.dart)
      //Text(
      //   'ht',
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 28,
      //   ),
      // ),
    );
  }
}
