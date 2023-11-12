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
    apiKey: 'AIzaSyCuJvGtxJkqtgxYQveoETkkcnMXgPcrRag',
    appId: '1:1043889593769:web:668353c8dce5dfb844b8b8',
    messagingSenderId: '1043889593769',
    projectId: 'upload-image-54ecd',
    authDomain: 'upload-image-54ecd.firebaseapp.com',
    storageBucket: 'upload-image-54ecd.appspot.com',
    measurementId: 'G-9KBPVW6KRW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBeP5tdYcBRI8HO0no3O1-9hiu3Ja7aPFI',
    appId: '1:1043889593769:android:533601d29434e4e644b8b8',
    messagingSenderId: '1043889593769',
    projectId: 'upload-image-54ecd',
    storageBucket: 'upload-image-54ecd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDd4RrEyWE2EzwBPsYC3uUIqlZHCHgd0xY',
    appId: '1:1043889593769:ios:55c960d7211420cb44b8b8',
    messagingSenderId: '1043889593769',
    projectId: 'upload-image-54ecd',
    storageBucket: 'upload-image-54ecd.appspot.com',
    iosBundleId: 'com.example.imagepicker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDd4RrEyWE2EzwBPsYC3uUIqlZHCHgd0xY',
    appId: '1:1043889593769:ios:dab94925ccf0b53d44b8b8',
    messagingSenderId: '1043889593769',
    projectId: 'upload-image-54ecd',
    storageBucket: 'upload-image-54ecd.appspot.com',
    iosBundleId: 'com.example.imagepicker.RunnerTests',
  );
}
