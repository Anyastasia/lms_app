import 'package:flutter/material.dart';

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  FlutterScreenState createState() => FlutterScreenState();
}

class FlutterScreenState extends State<FlutterScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'Flutter is a popular open-source mobile application development framework created by Google. It was first released in 2017 and has since become a popular choice for developing high-performance mobile applications. Flutter uses the Dart programming language, which was also created by Google. Dart is a modern programming language with features such as garbage collection and strong typing, making it a suitable language for developing complex mobile applications.';
    } else if (page == 1) {
      return 'Flutter`s widget-based architecture allows developers to create custom UI components that can be easily reused across different parts of the application. This approach can help speed up the development process and improve code maintainability. One of the main advantages of Flutter is its ability to create native-like mobile applications for both iOS and Android using a single codebase. This means that developers can write code once and deploy it to both platforms, saving time and reducing development costs.';
    } else if (page == 2) {
      return 'Flutter also provides a rich set of pre-built widgets and tools, making it easier for developers to create high-quality and visually appealing user interfaces. These widgets are customizable, allowing developers to modify them to suit their specific needs. Flutter also offers a hot reload feature, which enables developers to make changes to their code and see the results in real-time. This can help speed up the development process and improve productivity.';
    } else if (page == 3) {
      return 'Flutter has a growing community of developers who contribute to its development and maintenance. There are many online resources available, including documentation, tutorials, and online forums, making it easier for developers to learn and get help with Flutter. Flutter is also used by many large companies, including Alibaba, BMW, and Google, for developing mobile applications. Its popularity has been steadily increasing since its release, and it is now considered to be one of the top mobile application development frameworks.';
    } else if (page == 4) {
      return 'Flutter supports many third-party packages and plugins, making it easy for developers to add additional functionality to their applications. These packages and plugins can be found on the Flutter pub.dev repository. Finally, Flutter has a growing ecosystem of tools and services, including testing tools, deployment tools, and analytics tools, making it easier for developers to build, test, and deploy their applications.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: Flutter',
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
