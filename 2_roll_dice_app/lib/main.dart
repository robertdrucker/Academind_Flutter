// needed to run the runApp function
import 'package:flutter/material.dart'; // single or double quotes

void main() {
  // main () is a dart custom function
  // void is the return type
  // runApp is a function provided by Flutter

  // We call each widget as a Dart constructor function (class)
  // Note use of named param
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 121, 58, 183),
        body: GradientContainer(key: ValueKey('mySpecialContainer')),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  // explicit constructors - different ways to implement

  /*
  // positional arguments, where here a and b are values
  const GradientContainer(a, b);
  */

  /*
  // named arguments
  const GradientContainer({ required this.text });
  */

  //  But this how we should do it in a Flutter application.
  // The key argument is forwarded to the Stateless Widget
  /*
  const GradientContainer({ key }): super(key: key);
  */

  // This is equivalent to above, but a shortcut way to do it:
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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
