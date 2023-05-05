import 'package:flutter/material.dart';
import 'package:lms_app/quiz/question.dart';

class QuestionCard extends StatelessWidget {
  final Color backgroundColor;
  final BorderRadius borderRadius;
  const QuestionCard(
      {super.key, required this.backgroundColor, required this.borderRadius});

  static const Color fontColor = Color.fromARGB(255, 108, 99, 255);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: backgroundColor, borderRadius: borderRadius),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: const [
                Text(
                  'Question x of xx',
                  style: TextStyle(color: fontColor),
                ),
                Text(
                  'Question',
                  textScaleFactor: 2,
                  style: TextStyle(color: fontColor),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              SizedBox(height: 12),
              Question(text: 'Choice 1'),
              SizedBox(height: 12),
              Question(text: 'Choice 2'),
              SizedBox(height: 12),
              Question(text: 'Choice 3'),
              SizedBox(height: 12),
            ],
          )
        ],
      ),
    );
  }
}
