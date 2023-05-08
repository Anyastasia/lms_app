import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);

    final postData = {
      'email': email,
      'profile_img': "img.png",
      'username': "username",
    };
    final uid = _firebaseAuth.currentUser!.uid;
    final Map<String, Map> updates = {};
    updates['/users/$uid'] = postData;
    updates['/users/$uid'] = postData;
    updates['/users/$uid'] = postData;

    return FirebaseDatabase.instance.ref().update(updates);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
