import 'package:flutter/material.dart';

class JavascriptScreen extends StatefulWidget {
  const JavascriptScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  JavascriptScreenState createState() => JavascriptScreenState();
}

class JavascriptScreenState extends State<JavascriptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Javascript Screen'),
      ),
      body: const Center(
        child: Text('Javascript'),
      ),
    );
  }
}