import 'package:flutter/material.dart';


class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context){
    return(
      const Scaffold(
        body: Center(
          child: Text('Quiz'),
        ),
      )
    );
  }
}