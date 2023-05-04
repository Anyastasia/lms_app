import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:lms_app/firebase/storage_service.dart';
import 'package:lms_app/auth.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final User? user = Auth().currentUser;
  final Storage storage = Storage();

  Widget _profilePicture(){
    return GestureDetector(
      onTap: () async {
        final results = await FilePicker.platform.pickFiles(
          allowMultiple: false,
          type: FileType.custom,
          allowedExtensions: ['png','jpg']
        );

        if (results == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No file selected"))
          );
          return null;
        }

        final path = results.files.single.path!;
        final fileName = results.files.single.name;

        storage.uploadFile(path, fileName).then((value) => print('Done'));
      },
      child: CircleAvatar(
        backgroundImage: NetworkImage("imageUrl"),
        radius: 100,
      ),
    );
  }

  Widget _userDetails(){
    return Text(
      "Username: ${user!.displayName}\nEmail: ${user!.email}",
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,);
  }

  Widget _logoutButton(){
    return ElevatedButton(
      onPressed: () {
        FirebaseAuth.instance.signOut();
      },
      child: const Text("Sign out"),
    );
  }

  @override
  Widget build(BuildContext context){
    return(
      Scaffold(
        body: Center(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _profilePicture(),
                _userDetails(),
                _logoutButton(),
              ],
            ),
          ),
        ),
      )
    );
  }
}