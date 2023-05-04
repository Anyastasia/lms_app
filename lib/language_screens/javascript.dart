import 'package:flutter/material.dart';

class JavascriptScreen extends StatefulWidget {
  const JavascriptScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  JavascriptScreenState createState() => JavascriptScreenState();
}

class JavascriptScreenState extends State<JavascriptScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'JavaScript is a high-level, dynamic programming language that is used to create interactive and dynamic web pages. JavaScript was originally developed in 1995 by Brendan Eich at Netscape Communications Corporation, and has since become one of the most widely used programming languages on the web.';
    } else if (page == 1) {
      return 'JavaScript is primarily used on the client side, meaning that it is executed by a user`s web browser rather than a web server. JavaScript can also be used on the server side with the help of frameworks such as Node.js.';
    } else if (page == 2) {
      return 'JavaScript is often used in conjunction with HTML and CSS to create dynamic web applications and user interfaces. One of the key features of JavaScript is its ability to manipulate the Document Object Model (DOM), which is the interface that allows JavaScript to interact with HTML and CSS.';
    } else if (page == 3) {
      return 'JavaScript has a variety of built-in objects and functions that can be used to perform common programming tasks, such as working with arrays, manipulating strings, and handling events. JavaScript also has a large and active community of developers, with many open-source libraries and frameworks available to help developers build applications more quickly and efficiently.';
    } else if (page == 4) {
      return 'JavaScript has evolved significantly over the years, with new versions of the language (ES6, ES7, etc.) introducing new features and capabilities. JavaScript is also used outside of web development, with frameworks such as React Native allowing developers to build mobile applications using JavaScript.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: JavaScript',
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
