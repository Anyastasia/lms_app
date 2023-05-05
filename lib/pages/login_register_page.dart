import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lms_app/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String errorMsg = '';
  bool isLogin = true;
  String btnPos = "right";

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPassword2 = TextEditingController();
  Future<void> signInWithEmailAndPassword() async {
    try { 
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMsg = e.message!;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      if(_controllerEmail.text != ""){
        if(_controllerPassword.text == _controllerPassword2.text){
          await Auth().createUserWithEmailAndPassword(
            email: _controllerEmail.text, 
            password: _controllerPassword.text
          );
        } else {
          setState(() {
            errorMsg = "Password not match";
          });  
        }

      } else {
        setState(() {
          errorMsg = "Email Required!";
        });  
      }

    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMsg = e.message!;
      });
    }
  }

  Widget _entryField(String title, TextEditingController controller) {
    if(title == "Email"){
      return Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white)
            ),
            prefixIcon: Icon(Icons.account_circle_rounded, color: Colors.white,),
            label: Text("Email", style: TextStyle(color: Colors.white),),
          ),
          style: const TextStyle(color: Colors.white),
          enableSuggestions: false,
          autocorrect: false,
        )
      );

    } else {
      return Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: TextField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white)
            ),
            prefixIcon: Icon(Icons.lock, color: Colors.white,),
            label: Text("Password", style: TextStyle(color: Colors.white),),
          ),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        )
      );
    }
  }

  Widget _errorMessage() {
    return Text(errorMsg == '' ? '' : 'Hmm $errorMsg', style: TextStyle(color: Color.fromARGB(255, 255, 126, 126), fontWeight: FontWeight.w600),);
  }

  Widget _submitButton() {
    debugPrint("submitbutton pressed");
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: 
      SizedBox(
        width: 100,
        height: 35,
        child:TextButton(
          onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
          ),
          child: Text(
            isLogin ? 'Login' : 'Register', 
            style: const TextStyle(
              color: Color.fromARGB(255, 67, 62, 161),
              fontSize: 15
            )
          )
        )
      )
      // ElevatedButton(
      //   onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      //   child: Text(isLogin ? 'Login' : 'Register'),
      // )
    );
  }

  Widget _loginOrRegisterButton() {
    debugPrint("loginorregister button pressed");
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white70,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8, left: 30, right: 30),
        child: Text(
          isLogin ? 'Register instead' : 'Login instead',
          style: const TextStyle(
            color: Color.fromARGB(255, 67, 62, 161),
            fontSize: 15
          )
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: 350,
          
          child: Stack(
            children: [
              Visibility(
                visible: !isLogin,
                child: AnimatedPositioned(
                  top: 20,
                  left: 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.white,)
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: isLogin? 0 : 220),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Column(
                        children:[
                          Visibility(
                            visible: isLogin,
                            child:Padding(
                              padding: EdgeInsets.only(top: 80, bottom: 80),
                              child: Image.asset("assets/images/etivacicon.png", width: 220)
                            )
                          ),
                          Visibility(
                            visible: !isLogin,
                            child: 
                              Positioned(
                                left: 0,
                                child: Text("Register Account", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 25, letterSpacing: 2, wordSpacing: 1, fontFamily: "Poppins"),),
                              )
                          ),
                          _entryField('Email', _controllerEmail),
                          _entryField('Password', _controllerPassword),
                          Visibility(
                            visible: !isLogin,
                            child: _entryField('Confirm Password', _controllerPassword2)
                          ),
                        ]
                      ),
                    ),
                    _errorMessage(),
                    _submitButton(),
                    Visibility(
                      visible: isLogin,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Text("Don't have an account?"),
                          SizedBox(
                            width: 100,
                            child:TextButton(
                              onPressed: () {
                                setState(() {
                                  isLogin = !isLogin;
                                });
                              },
                              child: Text("register here", style: TextStyle(color: Color.fromARGB(255, 200,200,200)),)
                            )
                          )
                        ]
                      )
                    ),
                    Visibility(
                      visible: !isLogin,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Text("Already have an account?"),
                          SizedBox(
                            width: 60,
                            child:TextButton(
                              onPressed: () {
                                setState(() {
                                  isLogin = !isLogin;
                                });
                              },
                              child: Text("Login", style: TextStyle(color: Color.fromARGB(255, 200,200,200)),)
                            )
                          )
                        ]
                      )
                    )
                  ],
                )
              ),
            ]
          ),
        ),
      ),
    )
    );
  }
}

// Visibility(
//   visible: isLogin,
//   child:Padding(
//     padding: EdgeInsets.only(top: 80, bottom: 80),
//     child: Image.asset("assets/images/etivacicon.png", width: 220)
//   )
// ),
// _entryField('Email', _controllerEmail),
// _entryField('Password', _controllerPassword),
// Visibility(
//   visible: !isLogin,
//   child: _entryField('Confirm Password', _controllerPassword2)
// ),