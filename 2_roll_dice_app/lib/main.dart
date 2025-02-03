import 'package:flutter/material.dart'; // single or double quotes
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(key: ValueKey('mySpecialContainer')),
      ),
    ),
  );
}
