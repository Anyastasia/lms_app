import 'package:flutter/material.dart';
import 'package:lms_app/login.dart';
import 'package:lms_app/navbar.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108,99,255),
        elevation: 0,
      ),

      body: Center(
        child:
      Container(
        alignment: Alignment.center,
        width: 350,
        child: GestureDetector(
          child: Column(
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
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                  ),
                  child: const Text(
                    'Register', 
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
                  const Text("Alread have an account?", style: TextStyle(fontSize: 12,color: Colors.white, fontWeight: FontWeight.w500 ,letterSpacing: 1)),
                  TextButton(
                    onPressed: ()=> Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    ),
                    child: const Text("Login", style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 207, 206, 225), fontWeight: FontWeight.w500 ,letterSpacing: 1))
                  )
                ]
              ),
            ]
          )
        ),
      )
      )
    );
  }
}
