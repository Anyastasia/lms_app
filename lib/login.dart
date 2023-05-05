import 'package:flutter/material.dart';
import 'package:lms_app/navbar.dart';
import 'package:lms_app/register.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80, bottom: 80),
                child: Image.asset("assets/images/etivacicon.png", width: 220)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 100,
                    height: 35,
                    child:TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Navigation()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                      ),
                      child: const Text(
                        'Log in', 
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 62, 161),
                          fontSize: 15
                        )
                      )
                    )
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    const Text("Don't have an account?", style: TextStyle(fontSize: 12,color: Colors.white, fontWeight: FontWeight.w500 ,letterSpacing: 1)),
                    TextButton(
                        onPressed: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        ),
                        child: const Text("register here", style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 207, 206, 225), fontWeight: FontWeight.w500 ,letterSpacing: 1))
                      )
                    ]
                  ),
                ]
              )
            ]
          ),
        )
      )
    );
  }
}
