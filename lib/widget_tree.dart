import 'package:flutter/material.dart';
import 'package:lms_app/navbar.dart';
import 'package:lms_app/pages/login_register_page.dart';
import 'package:lms_app/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          debugPrint(snapshot.toString());
          return const Navigation();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}

// matthewperrybustarde@gmail.com