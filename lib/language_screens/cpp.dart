import 'package:flutter/material.dart';

class CppScreen extends StatefulWidget {
  const CppScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  CppScreenState createState() => CppScreenState();
}

class CppScreenState extends State<CppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C++ Screen'),
      ),
      body: const Center(
        child: Text('C++'),
      ),
    );
  }
}