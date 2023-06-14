import 'dart:math';

import 'package:flutter/material.dart';
  
final randomizer = Random();

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});

  @override
  State<ImageButton> createState() {
    return _ImageButton();
  }
}

class _ImageButton extends State<ImageButton> {

  int  number = 1;
  
  void rollDice() {

    setState(() {
      number = randomizer.nextInt(6)+1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$number.png",
          width: 300,
        ),
        const SizedBox(height: 30,),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            backgroundColor: Colors.pinkAccent,
            textStyle: const TextStyle(fontSize: 32),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
