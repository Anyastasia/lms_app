import 'package:flutter/material.dart';
import 'package:lms_app/quiz/question.dart';

class QuestionCard extends StatelessWidget {
  final Color backgroundColor;
  final BorderRadius borderRadius;
  const QuestionCard(
      {super.key, required this.backgroundColor, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: backgroundColor, borderRadius: borderRadius),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Question x of xx',
          ),
          const Text(
            'Question',
          ),
          Column(
            children: const [
              SizedBox(height: 8),
              Question(text: 'Choice 1'),
              SizedBox(height: 8),
              Question(text: 'Choice 2'),
              SizedBox(height: 8),
              Question(text: 'Choice 3'),
              SizedBox(height: 8),
            ],
          )
        ],
      ),
    );
  }
}
