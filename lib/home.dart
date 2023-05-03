import 'package:flutter/material.dart';

import 'language_screens/clang.dart';
import 'language_screens/cpp.dart';
import 'language_screens/css.dart';
import 'language_screens/flutter.dart';
import 'language_screens/html.dart';
import 'language_screens/java.dart';
import 'language_screens/javascript.dart';
import 'language_screens/vue.dart';
import 'language_screens/python.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final Map<String, String> _languages = {
    'Python': 'images/python.png',
    'C': 'images/clang.png',
    'C++': 'images/cpp.png',
    'CSS': 'images/css.png',
    'Javascript': 'images/javascript.png',
    'Java': 'images/java.png',
    'Vue': 'images/vue.png',
    'Flutter': 'images/flutter.png',
    'HTML': 'images/html.png',
  };


  void _navigateToLanguageScreen(String language) {
    if (language == "Python"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const PythonScreen()),);
    } else if (language == "C"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const ClangScreen()),);
    } else if (language == "C++"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const CppScreen()),);
    } else if (language == "CSS"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const CssScreen()),);
    } else if (language == "Javascript"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const JavascriptScreen()),);
    } else if (language == "Java"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const JavaScreen()),);
    } else if (language == "Vue"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const VueScreen()),);
    } else if (language == "Flutter"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const FlutterScreen()),);
    } else if (language == "HTML"){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const HtmlScreen()),);
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hello! User',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Courses',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(16.0),
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: List.generate(_languages.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        _navigateToLanguageScreen(_languages.keys.elementAt(index));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            _languages[_languages.keys.elementAt(index)]!,
                            width: 50.0,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            _languages.keys.elementAt(index),
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),

              ),
            )
          ],
        )
      ),
    );
  }
}
