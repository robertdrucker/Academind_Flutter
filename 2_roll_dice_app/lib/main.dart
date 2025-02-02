// needed to run the runApp function
import 'package:flutter/material.dart'; // single or double quotes

void main() {
  // main () is a dart custom function
  // void is the return type
  // runApp is a function provided by Flutter

  // We call each widget as a Dart constructor function (class)
  // Note use of named param
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 121, 58, 183),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
            ),
          ),
          child: const Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    ),
  );
}
