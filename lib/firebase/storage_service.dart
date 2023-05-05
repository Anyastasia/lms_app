import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';


class StorageService {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<void> _imgUrlToDatabase(uniqueFileName) async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final ref = FirebaseDatabase.instance.ref().child('users').child(uid);
    final profileImg = ref.child('users').child(uid).child('profile_img').toString();
    final postData = {
      'profile_img': uniqueFileName,
    };
    FirebaseDatabase.instance.ref().child('/users/$uid').update(postData);
  }

  Future<ListResult> listFiles() async {
    ListResult results = await _firebaseStorage.ref().child('images/user_profile').listAll();
    results.items.forEach((Reference ref) {
      print('Found file: $ref');
    });
    return results;
  } 
}
