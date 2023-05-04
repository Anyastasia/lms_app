// ignore_for_file: library_private_types_in_public_api

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
      return 'Python is a popular high-level programming language that emphasizes readability and simplicity. It was created in the late 1980s by Guido van Rossum, who named it after Monty Python`s Flying Circus comedy group. Since then, Python has become one of the most widely used programming languages in the world. One of the advantages of Python is its ease of use. It has a clear and concise syntax that makes it easy to learn for beginners. Python is also an interpreted language, which means that code can be executed without the need for compilation. This makes it faster and easier to write and test code.';
    } else if (page == 1) {
      return 'Python has a large and active community of developers who have created many libraries and frameworks to extend its functionality. Some popular libraries include NumPy, Pandas, and Matplotlib, which are used for data analysis and visualization. Popular web development frameworks include Flask and Django. Python also supports multiple programming paradigms, including object-oriented, functional, and procedural programming. Python is cross-platform and can run on many different operating systems, making it a popular choice for developers who need to create applications that can run on different platforms. Additionally, Python is open-source, which means that anyone can access and modify the source code.';
    } else if (page == 2) {
      return 'Python is often used for teaching programming in schools and universities due to its simplicity and ease of use. It is also used in online courses and tutorials, and there are many resources available to help people learn Python. Python has become a popular language for data science due to its powerful data manipulation and analysis libraries. These libraries, such as NumPy and Pandas, allow developers to easily process and analyze large datasets.';
    } else if (page == 3) {
      return 'Python is also commonly used in the field of artificial intelligence and machine learning. The TensorFlow and Keras libraries, for example, are popular for building and training neural networks. Python is a versatile language that can be used for a wide range of applications, from building desktop applications to developing web applications and mobile apps. It is also commonly used in scientific computing, finance, and gaming.';
    } else if (page == 4) {
      return 'Python has a strong community of developers who contribute to its development and maintenance. The Python Software Foundation oversees the development of the language and its standard library, and there are many online forums and user groups where developers can share knowledge and collaborate on projects.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: Python',
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
