import 'package:flutter/material.dart';

class PythonScreen extends StatefulWidget {
  const PythonScreen({Key? key}) : super(key: key);

  @override
  _PythonScreenState createState() => _PythonScreenState();
}

class _PythonScreenState extends State<PythonScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'C is a general-purpose programming language that was developed in the early 1970s by Dennis Ritchie at Bell Labs. '
          'It is a low-level language that allows developers to interact with computer hardware and memory directly. '
          'C is a compiled language, meaning that source code is translated into machine code by a compiler before it can be executed.';
    } else if (page == 1) {
      return 'C has had a profound impact on the world of computing, with many modern programming languages (such as C++, Java, and Python) being based on or influenced by C.'
          'C is a procedural language, meaning that it follows a set of procedures and routines to perform tasks.';
    } else if (page == 2) {
      return 'C is a portable language, meaning that code written in C can be compiled and run on many different platforms and operating systems. '
          'C is often used in systems programming, embedded systems, and operating system development due to its low-level nature and ability to directly manipulate hardware.';
    } else if (page == 3) {
      return 'C has a relatively simple syntax, with a small number of keywords and constructs that can be combined to create complex programs. '
          'C is a powerful language that provides developers with low-level control over a computer\'s hardware and memory, '
          'but this power also comes with increased responsibility for managing memory and ensuring that programs are safe and secure.';
    } else if (page == 4) {
      return 'C has a large and active community of developers, with many open-source libraries and frameworks available to help developers build applications more quickly and efficiently.'
          'C is a popular language for competitive programming due to its speed, efficiency, and low-level control over system resources.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course: Python'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Text(
              _getPageContent(_currentPage),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              maxPage,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentPage = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      color: _currentPage == index ? Colors.blue : Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
