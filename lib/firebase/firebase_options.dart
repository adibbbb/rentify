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
    apiKey: 'AIzaSyC85inmebRYL9iXIfxk9XmCDfj9Uz2JUws',
    appId: '1:465914501695:web:bd94feb4d5a48395f2368a',
    messagingSenderId: '465914501695',
    projectId: 'rentify-firebase-6584f',
    authDomain: 'rentify-firebase-6584f.firebaseapp.com',
    databaseURL: 'https://rentify-firebase-6584f-default-rtdb.asia-southeast1.firebasedatabase.app/',
    storageBucket: 'rentify-firebase-6584f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBs-LKkm7H27HVo_J3IWKshwWBt2NoAl_o',
    appId: '1:465914501695:android:6a326c7d9f28dd43f2368a',
    messagingSenderId: '465914501695',
    projectId: 'rentify-firebase-6584f',
    storageBucket: 'rentify-firebase-6584f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjDde_rL0IcQx2p6Ik7B-V0k4-vsB-Iu0',
    appId: '1:465914501695:ios:0f6f3e552d45dda7f2368a',
    messagingSenderId: '465914501695',
    projectId: 'rentify-firebase-6584f',
    storageBucket: 'rentify-firebase-6584f.appspot.com',
    iosBundleId: 'com.example.rentify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjDde_rL0IcQx2p6Ik7B-V0k4-vsB-Iu0',
    appId: '1:465914501695:ios:7945cb4da3df2c5df2368a',
    messagingSenderId: '465914501695',
    projectId: 'rentify-firebase-6584f',
    storageBucket: 'rentify-firebase-6584f.appspot.com',
    iosBundleId: 'com.example.rentify.RunnerTests',
  );
}