import 'package:flutter/material.dart';

import 'dice_image.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
        ),
        body: DiceImage(),
      ),
    ),
  );
}
