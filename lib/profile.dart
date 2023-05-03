import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context){
    return(
      const Scaffold(
        body: Center(
          child: Text('Profile'),
        ),
      )
    );
  }
}