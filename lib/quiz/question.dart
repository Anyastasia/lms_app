import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String text;
  const Question({super.key, required this.text});

  final double borderRadius = 23;
  final Color foregroundColor = Colors.white;
  final Color selectedColor = const Color.fromARGB(255, 108, 99, 255);
  final Color unselectedColor = const Color.fromARGB(179, 108, 99, 255);

  final Color isCorrect = const Color.fromARGB(255, 132, 200, 131);
  final Color isFalse = const Color.fromARGB(
    255,
    233,
    107,
    122,
  );
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  late Color _currentColor;
  bool _isSelected = false;

  void onTap() {
    setState(() {
      _isSelected = !_isSelected;
      if (_isSelected) {
        _currentColor = widget.selectedColor;
      } else {
        _currentColor = widget.unselectedColor;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _currentColor = widget.unselectedColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: _currentColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Center(child: Text(widget.text)),
      ),
    );
  }
}
