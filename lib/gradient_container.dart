import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 50, 18, 105),
          Color.fromARGB(255, 60, 36, 102),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: const Center(
        child: StartScreen(),
      ),
    //
    );
  }
}
