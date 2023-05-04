import 'package:flutter/material.dart';

class CssScreen extends StatefulWidget {
  const CssScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  CssScreenState createState() => CssScreenState();
}

class CssScreenState extends State<CssScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'CSS, or Cascading Style Sheets, is a stylesheet language used to describe the presentation of an HTML or XML document. It was first proposed in 1994 by Håkon Wium Lie, and has since become an essential tool in web development. CSS separates the presentation of a web page from its content, allowing developers to apply styling to HTML elements using a variety of selectors, properties, and values.';
    } else if (page == 1) {
      return 'CSS can be used to control nearly every aspect of a web page`s appearance, including layout, typography, colors, images, and animations. CSS uses a cascading hierarchy to determine which styles should be applied to each element on a page. This allows developers to define global styles that apply to an entire document, as well as more specific styles that apply to individual elements or groups of elements.';
    } else if (page == 2) {
      return 'CSS is often used in conjunction with other web technologies, such as HTML and JavaScript, to create dynamic and interactive web pages. CSS is constantly evolving, with new features and standards being developed and implemented all the time. Some of the latest advances in CSS include grid layouts, flexbox, and custom properties.';
    } else if (page == 3) {
      return 'CSS can be written directly into an HTML document using the <style> tag, or it can be linked to an external CSS file using the <link> tag. CSS can be written using a variety of text editors and integrated development environments (IDEs), as well as using online tools like CodePen or JSFiddle.';
    } else if (page == 4) {
      return 'CSS frameworks like Bootstrap and Foundation provide pre-built styles and components that can be used to quickly create responsive, mobile-first web designs. CSS is an important skill for anyone interested in web development or design, as it is used in nearly every website on the internet.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: CSS',
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
