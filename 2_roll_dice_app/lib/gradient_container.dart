import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

// use of var keyword
// var startAlignment = Alignment.topLeft;

// explicit type that could be null (nullable type)
// use this if you are not initializing the variable value
// the var keyword is replaced with the Alignment type
// the question mark indicates that the value could be null
// note that this will give an error below because begin and end expect non-null values
// Alignment? startAlignment;

// explicit type
// const Alignment startAlignment = Alignment.topLeft;

// use of type inference
// recommended way if you initialize the value of the variable
//  but only if the value of the variable could change
// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

// Use final for runtime constants
// Here we use implicit typing
// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

// Use const for compile-time constants
// Here we use implicit typing
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(key: ValueKey('myStyledText')),
      ),
    );
  }
}
