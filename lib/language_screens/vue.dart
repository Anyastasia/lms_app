import 'package:flutter/material.dart';

class VueScreen extends StatefulWidget {
  const VueScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  VueScreenState createState() => VueScreenState();
}

class VueScreenState extends State<VueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vue Screen'),
      ),
      body: const Center(
        child: Text('Vue'),
      ),
    );
  }
}