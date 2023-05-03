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
        scaffoldBackgroundColor: const Color.fromARGB(255, 108,99,255),
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
  bool _visible2 = false;
  double _position = 0;
  double _position2 = 500;

  int counter = 0;

  void nextBtn(){
    setState((){
      counter++;
      if(counter == 1){
        _visible = false;
        _visible2 = true;
      }else if(counter >= 2){
        _position = 0;
        _position2 = 500;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
        counter = 0;
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
          child: Container(
            constraints: const BoxConstraints( 
              maxWidth: 450,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            child: Stack(
              children: [
                AnimatedPositioned(
                  left: _position,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  width: MediaQuery. of(context). size. width,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset("assets/images/etivacicon.png", fit: BoxFit.contain),
                          const Padding(padding: EdgeInsets.only(top: 65),
                            child: Text("Explore your", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 25, letterSpacing: 2, wordSpacing: 1, fontFamily: "Poppins"),),
                          ),
                          const Text("new skills today", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 25, letterSpacing: 2, wordSpacing: 1, fontFamily: "Poppins"),),
                          const Padding(padding: EdgeInsets.only(top: 5),
                            child: Text("You can learn various kinds of", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 10, letterSpacing: 1.5, wordSpacing: 1, fontFamily: "Poppins"))
                          ),
                          const Text("courses in your hand", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 10, letterSpacing: 1.5, wordSpacing: 1, fontFamily: "Poppins")),
                        ]
                      )
                    )
                  )
                ),
                AnimatedPositioned(
                  left: _position2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  width: MediaQuery. of(context). size. width,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 155, left: 30, right: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset("assets/images/secondicon.png", fit: BoxFit.contain),
                          const Padding(padding: EdgeInsets.only(top: 55),
                            child: Text("Empower your", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 25, letterSpacing: 2, wordSpacing: 1, fontFamily: "Poppins"),),
                          ),
                          const Text("education to next level", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 25, letterSpacing: 2, wordSpacing: 1, fontFamily: "Poppins"),),
                          const Padding(padding: EdgeInsets.only(top: 5),
                            child: Text("Learn new things and develop your", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 10, letterSpacing: 1.5, wordSpacing: 1, fontFamily: "Poppins"))
                          ),
                          const Text("problem solving skills", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 10, letterSpacing: 1.5, wordSpacing: 1, fontFamily: "Poppins")),
                        ]
                      )
                    )
                  )
                )
              ]
            )
          )
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 20),
          child: SizedBox(
            width: 90,
            height: 40,
            child:FloatingActionButton.extended(
              onPressed: ()=>{
                setState(() {
                  _visible = !_visible;
                  _visible2 = !_visible2;
                  _position = _visible ? 0 : -500;
                  _position2 = _visible2 ? 0 : -500;
                }),
                nextBtn(),
              },
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              label: const Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black87
                  ),
                )
              ),
              elevation: 0,
            )
          )
        )
      ),
    );
  }
}
