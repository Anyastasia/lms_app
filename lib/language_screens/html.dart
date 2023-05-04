import 'package:flutter/material.dart';

class HtmlScreen extends StatefulWidget {
  const HtmlScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HtmlScreenState createState() => _HtmlScreenState();
}

class _HtmlScreenState extends State<HtmlScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'HTML, or Hypertext Markup Language, is the standard language used to create web pages. It was first developed in the early 1990s by Tim Berners-Lee, the inventor of the World Wide Web. HTML consists of a series of tags, which are used to define the structure and content of a web page. For example, the <html> tag is used to define the beginning and end of an HTML document, and the <h1> tag is used to define a top-level heading.';
    } else if (page == 1) {
      return 'HTML tags can also be used to add multimedia content to web pages, such as images, audio, and video. For example, the <img> tag is used to insert an image into a web page. HTML is a markup language, which means that it is not a programming language like Java or Python. Instead, it is used to describe the structure and content of a web page, and is interpreted by web browsers to display the page to users.';
    } else if (page == 2) {
      return 'HTML is often used in conjunction with other web technologies, such as Cascading Style Sheets (CSS) and JavaScript, to create dynamic and interactive web pages. HTML5 is the most recent version of HTML, and was released in 2014. It introduced many new features, such as support for video and audio playback, improved forms and input controls, and enhanced semantics.';
    } else if (page == 3) {
      return 'HTML documents are typically stored as text files with the .html or .htm file extension. They can be created and edited using a variety of text editors and integrated development environments (IDEs). Web developers can use various tools and frameworks to simplify the process of creating and managing HTML documents, such as content management systems (CMS) like WordPress, and front-end frameworks like Bootstrap.';
    } else if (page == 4) {
      return 'HTML is a foundational skill for anyone interested in web development or design, as it is used in nearly every website on the internet. HTML is an open standard, meaning that it is free to use and anyone can contribute to its development.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: HTML',
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
