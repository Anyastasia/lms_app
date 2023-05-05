import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_list.dart';
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
  final uid = FirebaseAuth.instance.currentUser!.uid;

  final FirebaseStorage storage = FirebaseStorage.instance;

  String imageUrl = '';

  final dbRef = FirebaseDatabase.instance.ref().child('users');

  
  Widget _profilePicture() {
    final ref = FirebaseDatabase.instance.ref().child('users').child(uid);
    final profileImg = ref.child('users').child(uid).child('profile_img').toString();
    final imgUrl = FirebaseStorage.instance.ref().child('users/$uid/profile_img').getDownloadURL().then((url) {debugPrint("1111111111111 $url");});
    return GestureDetector(
      onTap: () async {
        // 
        ImagePicker imagePicker = ImagePicker();
        // make sure to use an android gallery or it doesnt work
        XFile? file = await imagePicker.pickImage(source: ImageSource.gallery); 
        debugPrint('${file?.path}');

        if (file==null) return;
        // Convert file name to date time 
        String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
        // Search for firebase path
        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('images/user_profile');
        // Create reference path
        Reference imageToUpload = referenceDirImages.child(uniqueFileName);

        // Error handler
        try{
          // Store the file
          await imageToUpload.putFile(File(file.path));
          // Get the download url
          imageUrl = await imageToUpload.getDownloadURL();
          // Update the database
          final postData = {
              'profile_img': uniqueFileName,
          };
          FirebaseDatabase.instance.ref().child(uid).update(postData);

          const SnackBar(content: Text('Profile picture uploaded!'));
        } catch(e){
          debugPrint(e.toString());
        }

      },
      child: CircleAvatar(
        //placeholder
        backgroundImage: Image.network('https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png').image,
        //backgroundImage: Image.network(imgUrl.toString()).image,
        radius: 100,
      ),
    );
  }
  
  // Widget _userDetails() {
  //   final uid = FirebaseAuth.instance.currentUser!.uid;
  //   final ref = FirebaseDatabase.instance.ref('users').child(uid);
  //   final username = fetchData();
  //   return Text(
  //     "Username: $username",
  //     style: const TextStyle(
  //       fontSize: 20,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     textAlign: TextAlign.center,);
  // }

  Widget _emailDetails(){
    return Text(
      "Email: ${user!.email}",
      style: const TextStyle(
        fontSize: 16,
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
                _emailDetails(),
                _logoutButton(),
              ],
            ),
          ),
        ),
      )
    );
  }
}