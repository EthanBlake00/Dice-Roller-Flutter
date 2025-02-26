import 'dart:math';

import 'package:flutter/material.dart';

class DiceImage extends StatefulWidget {
  const DiceImage({super.key});

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  String image = "assets/dice-1.png";


  void changeImage() {
    setState(() {
      Random random = Random();
      int randomNumber = random.nextInt(6) + 1;
      image = "assets/dice-$randomNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Image.asset(
            image,
            width: 200,
            height: 200,
          ),
          OutlinedButton(
            onPressed: changeImage,
            child: Text("Roll"),
          )
        ],
      ),
    );
  }
}
