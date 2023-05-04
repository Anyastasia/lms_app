import 'package:flutter/material.dart';

class CppScreen extends StatefulWidget {
  const CppScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CppScreenState createState() => _CppScreenState();
}

class _CppScreenState extends State<CppScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'C++ is a high-level programming language that was created in 1983 by Bjarne Stroustrup. It is an extension of the C programming language and is commonly used for developing operating systems, system software, device drivers, and other performance-critical applications. C++ is a compiled language, meaning that the source code is compiled into executable code that can be run on a computer. This approach can help improve application performance by producing code that is optimized for the specific hardware it will run on.';
    } else if (page == 1) {
      return 'C++ is a strongly typed language, meaning that data types must be defined before they can be used. This can help prevent errors and improve code quality. C++ supports object-oriented programming (OOP), a programming paradigm that emphasizes the use of objects, classes, and inheritance. OOP can help make code more modular, reusable, and easier to maintain.';
    } else if (page == 2) {
      return 'C++ also supports generic programming, which allows for the creation of generic algorithms that can work with different types of data. This approach can help improve code reuse and reduce duplication. C++ has a large standard library that provides many built-in functions and classes, including support for input/output operations, data structures, and algorithms. This can help speed up the development process and improve code quality.';
    } else if (page == 3) {
      return 'C++ is used by many large companies, including Microsoft, Google, and Adobe, for developing performance-critical applications. Its performance, efficiency, and portability make it a popular choice for these types of applications. C++ has a strong community of developers who contribute to its development and maintenance. There are many online resources available, including documentation, tutorials, and online forums, making it easier for developers to learn and get help with C++.';
    } else if (page == 4) {
      return 'C++ is also used in the development of video games, particularly for console and PC games. Its performance and ability to interface with hardware make it a popular choice for game development. Finally, C++ is a complex language that can be difficult for beginners to learn. It requires a solid understanding of programming concepts and can have a steep learning curve.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: C++',
          style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Poppins',
              color: Colors.white,
              letterSpacing: 1),
        ),
        backgroundColor: Color.fromARGB(255, 108, 99, 255).withOpacity(0.2),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Text(
              _getPageContent(_currentPage),
              style: const TextStyle(
                color: Color.fromARGB(255, 108, 99, 255),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
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
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
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
