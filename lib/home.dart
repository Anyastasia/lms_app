import 'package:flutter/material.dart';

import 'language_screens/python.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final Map<String, String> _languages = {
    'Python': 'assets/images/python.png',
    'C': 'assets/images/clang.png',
    'C++': 'assets/images/cpp.png',
    'CSS': 'assets/images/css.png',
    'JavaScript': 'assets/images/js.png',
    'Java': 'assets/images/java.png',
    'Vue': 'assets/images/vue.png',
    'React': 'assets/images/react.png',
    'Flutter': 'assets/images/flutter.png',
    'HTML': 'assets/images/html.png',
    };
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(16.0),
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: List.generate(_languages.length, // index length
                  (index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PythonScreen()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.ac_unit,
                            size: 70.0,
                            color: Colors.blueGrey,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "Item $index",
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
