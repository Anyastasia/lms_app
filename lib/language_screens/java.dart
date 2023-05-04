import 'package:flutter/material.dart';

class JavaScreen extends StatefulWidget {
  const JavaScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  JavaScreenState createState() => JavaScreenState();
}

class JavaScreenState extends State<JavaScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'Java is a high-level programming language that was created in the mid-1990s by James Gosling at Sun Microsystems. It is an object-oriented language that is commonly used for developing web applications, mobile applications, and desktop applications. Java is platform-independent, meaning that code written in Java can run on any platform that has a Java Virtual Machine (JVM). This approach can help improve application portability and reduce development costs.';
    } else if (page == 1) {
      return 'Java is a compiled language, meaning that the source code is compiled into bytecode that can be executed by the JVM. This approach can help improve application performance and security. Java has a large standard library that provides many built-in functions and classes, including support for input/output operations, networking, and database access. This can help speed up the development process and improve code quality.';
    } else if (page == 2) {
      return 'Java also supports multithreading, which allows for the concurrent execution of multiple threads of execution within the same program. This approach can help improve application performance by allowing tasks to be performed in parallel. Java is used by many large companies, including Google, Amazon, and Facebook, for developing enterprise applications. Its scalability, performance, and security make it a popular choice for these types of applications.';
    } else if (page == 3) {
      return 'Java has a strong community of developers who contribute to its development and maintenance. There are many online resources available, including documentation, tutorials, and online forums, making it easier for developers to learn and get help with Java. Java has undergone several revisions since its initial release, with the most recent version being Java 16, released in March 2021. These revisions have added new features and improved the language`s performance and security.';
    } else if (page == 4) {
      return 'Java is also used in the development of Android applications, making it a popular choice for mobile app development. Finally, Java is a relatively easy language to learn for beginners, with many resources available for learning the language and getting started with development.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: Java',
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
