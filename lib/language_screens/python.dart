import 'package:flutter/material.dart';

class PythonScreen extends StatefulWidget {
  const PythonScreen({Key? key}) : super(key: key);

  @override
  _PythonScreenState createState() => _PythonScreenState();
}

class _PythonScreenState extends State<PythonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course: Python'),
      ),
      body: const Center(
        child: Text('Python'),
      ),
    );
  }
}