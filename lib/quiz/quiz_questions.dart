import 'package:flutter/material.dart';

import './question_card.dart';

class QuizQuestions extends StatelessWidget {
  final questions = [
    {
      'question': 'Questioo 1',
      'choices': ['Choice 1', 'Choice 2', 'Choice 3'],
      'correctAnswers': [0, 3],
    },
    {
      'question': 'Questioo 1',
      'choices': ['Choice 1', 'Choice 2', 'Choice 3'],
      'correctAnswers': [0, 3],
    },
    {
      'question': 'Questioo 1',
      'choices': ['Choice 1', 'Choice 2', 'Choice 3'],
      'correctAnswers': [0, 3],
    }
  ];

  QuizQuestions({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
          backgroundColor: const Color.fromARGB(255, 108, 99, 255),
        ),
        body: quizLayout(questions),
      );
    });
  }
}

Widget quizLayout(questions) {
  return Center(
      child: Container(
    padding: const EdgeInsets.all(32),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 108, 99, 255)),
    child: Center(
      child: QuestionCard(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.circular(23)),
    ),
  ));
}
