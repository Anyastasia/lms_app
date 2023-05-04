import 'package:flutter/material.dart';
import 'package:lms_app/navbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override

  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      alignment: Alignment.center,
      width: 350,
      child: GestureDetector(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Navigation()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              child: const Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 30, right: 30),
                  child: Text('Log in',
                      style: TextStyle(
                          color: Color.fromARGB(255, 67, 62, 161),
                          fontSize: 15))),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text("Don't have an account?"),
              TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      ),
                  child: const Text("register here",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 167, 165, 219),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1)))
            ]),
          ])),
    )));
  }
}
