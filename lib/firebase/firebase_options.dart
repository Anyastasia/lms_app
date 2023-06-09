// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBJyepXl6C5hBC-TOtvzKiADKTtgInbftE',
    appId: '1:437565129752:web:2347b22c4392755e1d6f6d',
    messagingSenderId: '437565129752',
    projectId: 'etivac-lms',
    authDomain: 'etivac-lms.firebaseapp.com',
    databaseURL: 'https://etivac-lms-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'etivac-lms.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU3N0CqM4Hzlj1R5C0SFWESeqG2KymV1k',
    appId: '1:437565129752:android:729b6a130e0126c91d6f6d',
    messagingSenderId: '437565129752',
    projectId: 'etivac-lms',
    databaseURL: 'https://etivac-lms-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'etivac-lms.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkGwcJsEN-qGqSQxO00be_k1tfpKQtyuQ',
    appId: '1:437565129752:ios:fea015ab18c0aaf91d6f6d',
    messagingSenderId: '437565129752',
    projectId: 'etivac-lms',
    databaseURL: 'https://etivac-lms-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'etivac-lms.appspot.com',
    iosClientId: '437565129752-ldgduig1ve9488fv5ub25i2jgg1tdotb.apps.googleusercontent.com',
    iosBundleId: 'com.example.lmsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkGwcJsEN-qGqSQxO00be_k1tfpKQtyuQ',
    appId: '1:437565129752:ios:fea015ab18c0aaf91d6f6d',
    messagingSenderId: '437565129752',
    projectId: 'etivac-lms',
    databaseURL: 'https://etivac-lms-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'etivac-lms.appspot.com',
    iosClientId: '437565129752-ldgduig1ve9488fv5ub25i2jgg1tdotb.apps.googleusercontent.com',
    iosBundleId: 'com.example.lmsApp',
  );
}
