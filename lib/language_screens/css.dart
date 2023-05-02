import 'package:flutter/material.dart';

class CssScreen extends StatefulWidget {
  const CssScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  CssScreenState createState() => CssScreenState();
}

class CssScreenState extends State<CssScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CSS Screen'),
      ),
      body: const Center(
        child: Text('CSS'),
      ),
    );
  }
}