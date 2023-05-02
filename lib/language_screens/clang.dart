import 'package:flutter/material.dart';

class ClangScreen extends StatefulWidget {
  const ClangScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  ClangScreenState createState() => ClangScreenState();
}

class ClangScreenState extends State<ClangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Screen'),
      ),
      body: const Center(
        child: Text('C'),
      ),
    );
  }
}