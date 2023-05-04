import 'package:flutter/material.dart';

class VueScreen extends StatefulWidget {
  const VueScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  VueScreenState createState() => VueScreenState();
}

class VueScreenState extends State<VueScreen> {
  int _currentPage = 0;
  int maxPage = 5;
  String _getPageContent(int page) {
    if (page == 0) {
      return 'Vue.js is a progressive JavaScript framework for building user interfaces. Vue.js was created by Evan You in 2014, and has since gained a large and active community of developers.';
    } else if (page == 1) {
      return 'One of the key features of Vue.js is its ease of use and simplicity, making it a popular choice for building web applications. Vue.js is a component-based framework, meaning that applications are built by creating and reusing components that can be easily combined.';
    } else if (page == 2) {
      return 'Vue.js also provides a reactive data binding system, which allows changes to data to be automatically reflected in the user interface. Vue.js is often used in conjunction with other front-end technologies, such as HTML, CSS, and JavaScript.';
    } else if (page == 3) {
      return 'Vue.js also has a large and active ecosystem of plugins and extensions, which can be used to extend the functionality of the framework. Vue.js is open-source software, meaning that it is freely available and can be modified and distributed by anyone.';
    } else if (page == 4) {
      return 'Vue.js has gained significant popularity in recent years, with many large companies and organizations using it to build their web applications. Vue.js also has a growing number of job opportunities for developers who are skilled in the framework.';
    } else {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course: Vue',
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
