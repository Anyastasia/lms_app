import 'package:flutter/material.dart';

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  FlutterScreenState createState() => FlutterScreenState();
}

class FlutterScreenState extends State<FlutterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Screen'),
      ),
      body: const Center(
        child: Text('Flutter'),
      ),
    );
  }
}