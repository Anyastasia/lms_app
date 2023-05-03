import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Auth',
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomepageScreen();
          } else {
            return const AuthScreen();
          }
        },
      )
    );
  }
}


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  
  // ignore: library_private_types_in_public_api
  _AuthScreenState createState() => _AuthScreenState();
}


class _AuthScreenState extends State<AuthScreen> {
  final bool _isLogin = true;
  bool _Loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  handleSubmit() async {
    if(!_formKey.currentState!.validate()) return;
    final email = _emailController.value.text;
    final password = _passwordController.value.text;

    setState(() => _Loading = true);

    if(_isLogin) {
      await Auth().signInWithEmailAndPassword(email, password);
    } else {
      await Auth().registerWithEmailAndPassword(email, password); 
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Login", style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20,),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Email',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  )
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Password',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  )
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => handleSubmit(),
                child: _Loading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                      ),
                    )
                  : Text(_isLogin ? 'Login' : 'Register')
              )
            ],
          ),
        ),
      ),
    );
  }
}