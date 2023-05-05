import 'package:flutter/material.dart';

import './quiz/quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final takenCourses = {
    "C++",
    "Python",
    "Flutter"
  };
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: const Color.fromARGB(255, 108, 99, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFFFFFFFF)))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(children: const [
                    Text('Welcome! ',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('<Name>', style: TextStyle(color: Colors.white))
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Take a quiz',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Quiz(
                        image: 'assets/images/python.png',
                        language: 'Python',
                        buttonText: 'Take Quiz',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Quiz(
                        image: 'assets/images/cpp.png',
                        language: 'C++',
                        buttonText: 'Take Quiz',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}

