import 'package:flutter/material.dart';
import 'package:lms_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 108,99,255),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 15.0, fontFamily: 'Poppins', color: Colors.white70, letterSpacing: 1),
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _visible = true;
  int counter = 0;

  void nextBtn(){
    setState((){
      counter++;
      if(counter == 1){
        _visible = false;
      }else if(counter == 2){
        _visible = true;
        counter = 0;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 108,99,255),
        body: Center(
          child: Column(
           children: [
              Stack( 
                children: [
                  Visibility(
                    visible: _visible,
                    child: AnimatedOpacity(
                      opacity: _visible ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 200),
                      child: Image(image: AssetImage("images/etivacicon.png")),
                      )),
                    Visibility(
                    visible: !_visible,
                    child: AnimatedOpacity(
                    opacity: _visible ? 0.0 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: GestureDetector(
                        child: Image(image: AssetImage("images/secondicon.png")),
                      )
                    )
                  ),
                ]
              )
            ]
          )
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50, right: 20),
          child:  FloatingActionButton.extended(
            onPressed: ()=>{
              nextBtn()
            },
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            label: Padding(
              padding: EdgeInsets.zero,
              child: Container(
                width: 80.0,
                // height: 20.0,
                alignment: Alignment.center,
                child: const Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87
                  ),
                )
              )
            ),
          ),
        )
      ),
    );
  }
}
