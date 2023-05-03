import 'package:flutter/material.dart';
import 'package:lms_app/pages/login_register_page.dart';
import 'package:lms_app/pages/home_page.dart';
import 'package:lms_app/auth.dart';
import 'navbar.dart';

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
          return const Navigation();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}