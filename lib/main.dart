import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 50, 18, 105),
            Color.fromARGB(255, 60, 36, 102),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Learn Flutter the fun way",
                style: TextStyle(
                    color: Color.fromARGB(255, 217, 217, 217), fontSize: 24),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Start Quiz"),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white ),
              )
            ],
          ),
        ),
//
      ),
    ),
  ));
}
