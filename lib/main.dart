import 'package:flutter/material.dart';
import 'package:dice_rolling/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          //backgroundColor: Colors.blueAccent,
          body: GradientContainer(Color.fromARGB(255, 102, 69, 164),
              Color.fromARGB(255, 13, 10, 2))),
    ),
  );
}
