import 'package:flutter/material.dart';

class JavaScreen extends StatefulWidget {
  const JavaScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  JavaScreenState createState() => JavaScreenState();
}

class JavaScreenState extends State<JavaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Java Screen'),
      ),
      body: const Center(
        child: Text('Java'),
      ),
    );
  }
}