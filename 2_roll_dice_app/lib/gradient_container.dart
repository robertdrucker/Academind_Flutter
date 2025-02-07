import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {required this.moreColors, super.key});

  // additional constructor function
  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo,
  //       moreColors = const [
  //         Color.fromARGB(65, 33, 5, 109),
  //         Color.fromARGB(195, 68, 21, 199)
  //       ];

  final Color color1;
  final Color color2;
  final List<Color> moreColors;

  void rollDice() {
    // ...
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          // colors: moreColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          // vertical axis
          // mainAxisSize: MaxAxisSize.max // default
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              // onPressed: () {
              //   //
              // }
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.all(20),
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
