import 'package:flutter/material.dart';

class HtmlScreen extends StatefulWidget {
  const HtmlScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HtmlScreenState createState() => _HtmlScreenState();
}

class _HtmlScreenState extends State<HtmlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTML Screen'),
      ),
      body: const Center(
        child: Text('HTML'),
      ),
    );
  }
}